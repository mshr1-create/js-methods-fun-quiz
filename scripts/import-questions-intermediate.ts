import 'dotenv/config';
import fs from 'fs';
import csv from 'csv-parser';
import fetch from 'node-fetch';

type StrapiEntity<T> = { id: number; attributes: T };
type StrapiList<T> = { data: Array<StrapiEntity<T>>; meta: { pagination?: { page: number; pageSize: number; pageCount: number; total: number } } };
type StrapiItem<T> = { data: StrapiEntity<T> | null };

const STRAPI_URL = (process.env.STRAPI_URL ?? 'http://localhost:1337').replace(/\/$/, '');
const API = `${STRAPI_URL}/api`;
const TOKEN = process.env.STRAPI_TOKEN || '';

const CSV_PATH = process.env.CSV_PATH || './data/questions-intermediate.csv';
const START_QID = Number(process.env.START_FROM_ID || 1);
const END_QID = Number(process.env.END_QUESTIONID || 999999);

const CREATE_MISSING_CHOICES = (process.env.CREATE_MISSING_CHOICES || 'true') === 'true';
const CREATE_MISSING_QUIZ = (process.env.CREATE_MISSING_QUIZ || 'true') === 'true';
const QUIZ_LOOKUP_FIELD = (process.env.QUIZ_LOOKUP_FIELD || 'slug').toLowerCase(); // 'id' | 'slug' | 'title'
const DRY_RUN = (process.env.DRY_RUN || 'false') === 'true';

if (!TOKEN) {
  console.error('❌ 環境変数 STRAPI_TOKEN が設定されていません。');
  process.exit(1);
}

const headers = {
  'Content-Type': 'application/json',
  Authorization: `Bearer ${TOKEN}`,
};

/** Question.type を正規化・推論して Strapi の enum（"multiple" | "input"）に合わせる */
function normalizeQuestionType(row: { type?: string; choices?: string }): 'multiple' | 'input' {
  const raw = String(row.type ?? '').trim().toLowerCase();
  if (raw === 'multiple' || raw === 'multiple_choice' || raw === 'multiple-choice' || raw === 'mcq') {
    return 'multiple';
  }
  if (raw === 'input' || raw === 'text' || raw === 'short' || raw === 'fill' || raw === 'fillin') {
    return 'input';
  }

  const choicesText = String(row.choices ?? '').trim();
  // choices が空/ダッシュなら自由入力とみなす
  if (choicesText === '' || choicesText === '-' || choicesText === '—' || choicesText === 'ー') {
    return 'input';
  }
  // デフォルトは選択式
  return 'multiple';
}

/** 文字列正規化（選択肢テキストの一致精度を上げる） */
function normalizeChoiceText(s: string): string {
  return (s ?? '')
    .replace(/\r?\n/g, ' ')                 // 改行→空白
    .replace(/[ 　\t]+/g, ' ')              // 連続空白→1
    .replace(/\s*[,，]\s*$/, '')            // 末尾のカンマ類削除
    .replace(/^\s+|\s+$/g, '')              // 前後空白
    .replace(/[“”]/g, '"')                  // 全角引用符を半角に
    .replace(/[’‘]/g, "'");                 // 変種アポストロフィ統一
}

/** CSV行の型。※末尾に type, quiz を追加 */
type CsvRow = {
  questionid: string;
  title: string;
  text: string;
  code?: string;
  hint?: string;
  choices: string;   // カンマ区切り
  answer: string;
  explanation?: string;
  type?: string;     // 追加項目（例: "multiple_choice" | "input" など）
  quiz?: string;     // 追加項目（id/slug/title のいずれか）
};

/** 既存Choiceを全文字列Mapへ（text正規化 -> id） */
async function fetchAllChoicesMap(): Promise<Map<string, number>> {
  const map = new Map<string, number>();
  let page = 1;
  const pageSize = 100;

  while (true) {
    const url = `${API}/choices?pagination[page]=${page}&pagination[pageSize]=${pageSize}`;
    const res = await fetch(url, { headers });
    if (!res.ok) {
      const body = await res.text();
      throw new Error(`Failed to fetch choices page ${page}: ${res.status} ${res.statusText} ${body}`);
    }
    const json = (await res.json()) as any;
    const data = json?.data ?? [];
    for (const row of data) {
      const text = row?.attributes?.text;
      if (typeof text === 'string') {
        const key = normalizeChoiceText(text);
        if (!map.has(key)) map.set(key, Number(row.id));
      }
    }
    const p = json?.meta?.pagination;
    if (!p || p.page >= p.pageCount) break;
    page++;
  }
  return map;
}

/** questionid で既存Questionを検索（あるならスキップ用） */
async function findQuestionByQuestionId(questionid: number) {
  const url = `${API}/questions?filters[questionid][$eq]=${encodeURIComponent(String(questionid))}&pagination[pageSize]=1`;
  const res = await fetch(url, { headers });
  if (!res.ok) {
    throw new Error(`findQuestion failed: ${res.status} ${res.statusText} ${await res.text()}`);
  }
  const json = (await res.json()) as StrapiList<unknown>;
  return json.data?.[0] ?? null;
}

/** Choice作成 */
async function createChoice(text: string): Promise<number> {
  if (DRY_RUN) {
    console.log(`   [DRY_RUN] would create Choice "${text}"`);
    return -1;
  }
  const body = { data: { text } };
  const res = await fetch(`${API}/choices`, { method: 'POST', headers, body: JSON.stringify(body) });
  if (!res.ok) {
    const err = await res.text();
    throw new Error(`Choice create failed: ${res.status} ${res.statusText} ${err}`);
  }
  const json = (await res.json()) as StrapiItem<{ text: string }>;
  return json.data!.id;
}

/** quiz リレーションの解決: CSVの quiz 列から id を得る（なければ自動作成可） */
async function resolveQuizId(quizValue?: string | number): Promise<number | null> {
  if (!quizValue) return null;

  // 1) 数値id指定
  const asNum = Number(quizValue);
  if (!Number.isNaN(asNum) && String(quizValue).trim() === String(asNum)) {
    return asNum;
  }

  // 2) slug / title 照合
  const field = QUIZ_LOOKUP_FIELD === 'title' ? 'title' : 'slug';
  const url = `${API}/quizzes?filters[${field}][$eq]=${encodeURIComponent(String(quizValue))}&pagination[pageSize]=1`;
  const res = await fetch(url, { headers });
  if (!res.ok) throw new Error(`quiz lookup failed: ${res.status} ${res.statusText} ${await res.text()}`);
  const json = (await res.json()) as StrapiList<{ slug?: string; title?: string }>;
  const found = json.data?.[0];
  if (found) return found.id;

  if (!CREATE_MISSING_QUIZ) {
    console.warn(`⚠️ quiz "${quizValue}" が見つからず、CREATE_MISSING_QUIZ=false のため未設定で続行します。`);
    return null;
  }

  // 3) 自動作成（slug 優先で作成。titleはfallback）
  if (DRY_RUN) {
    console.log(`   [DRY_RUN] would create Quiz with ${field}="${quizValue}"`);
    return -1;
  }
  const createPayload: any = { };
  if (field === 'slug') {
    createPayload.slug = String(quizValue);
    createPayload.title = String(quizValue);
  } else {
    createPayload.title = String(quizValue);
    // slugが必須なら簡易生成
    createPayload.slug = String(quizValue).toLowerCase().replace(/\s+/g, '-');
  }
  const resCreate = await fetch(`${API}/quizzes`, { method: 'POST', headers, body: JSON.stringify({ data: createPayload }) });
  if (!resCreate.ok) {
    const err = await resCreate.text();
    throw new Error(`Quiz create failed: ${resCreate.status} ${resCreate.statusText} ${err}`);
  }
  const created = (await resCreate.json()) as StrapiItem<any>;
  console.log(`   ➕ Created Quiz "${quizValue}" (#${created.data!.id})`);
  return created.data!.id;
}

/** Question作成 */
async function createQuestion(payload: any): Promise<number> {
  if (DRY_RUN) {
    console.log('   [DRY_RUN] would create Question with payload:', JSON.stringify(payload));
    return -1;
  }
  const res = await fetch(`${API}/questions`, { method: 'POST', headers, body: JSON.stringify({ data: payload }) });
  if (!res.ok) {
    const err = await res.text();
    throw new Error(`Question create failed: ${res.status} ${res.statusText} ${err}`);
  }
  const json = (await res.json()) as StrapiItem<any>;
  return json.data!.id;
}

/** 作成直後に populate で choices が紐付いたか検証 */
async function verifyQuestionChoices(questionId: number): Promise<boolean> {
  if (questionId < 0) return true; // DRY_RUN
  const url = `${API}/questions/${questionId}?populate[choices]=*&populate[quiz]=*`;
  const res = await fetch(url, { headers });
  if (!res.ok) {
    console.warn(`   ⚠️ verify fetch failed: ${res.status} ${res.statusText}`);
    return false;
  }
  const json = (await res.json()) as StrapiItem<any>;
  const choices = json.data?.attributes?.choices?.data ?? [];
  return Array.isArray(choices) && choices.length > 0;
}

async function main() {
  console.log('🚀 Import (intermediate) start');
  console.log(`📄 CSV: ${CSV_PATH}`);
  console.log(`🔢 Range: ${START_QID}..${END_QID}`);
  console.log(`🧰 Options: CREATE_MISSING_CHOICES=${CREATE_MISSING_CHOICES}, CREATE_MISSING_QUIZ=${CREATE_MISSING_QUIZ}, QUIZ_LOOKUP_FIELD=${QUIZ_LOOKUP_FIELD}, DRY_RUN=${DRY_RUN}`);

  // 1) 既存ChoicesをMap化
  console.log('📥 Fetching existing choices...');
  const choiceMap = await fetchAllChoicesMap();
  console.log(`   Found ${choiceMap.size} choices in Strapi`);

  // 2) CSVロード
  const rows: CsvRow[] = [];
  await new Promise<void>((resolve, reject) => {
    fs.createReadStream(CSV_PATH)
      .pipe(csv())
      .on('data', (r: CsvRow) => rows.push(r))
      .on('end', () => resolve())
      .on('error', reject);
  });
  console.log(`📦 Rows loaded: ${rows.length}`);

  // 3) 1パスで処理
  for (const row of rows) {
    const qid = Number(row.questionid);
    if (!Number.isFinite(qid)) {
      console.warn(`⚠️ questionidが数値でない行をスキップ: "${row.questionid}"`);
      continue;
    }
    if (qid < START_QID || qid > END_QID) continue;

    // 重複チェック（questionidユニーク前提）
    const existing = await findQuestionByQuestionId(qid);
    if (existing) {
      console.log(`⏭️  Question#${qid} は既に存在。スキップ`);
      continue;
    }

    console.log(`\n--- Processing Question#${qid} ---`);

    // choices: "a, b, c, d" → ids
    const choiceTexts = (row.choices || '')
      .split(',')
      .map((s) => normalizeChoiceText(s))
      .filter(Boolean);

    const choiceIds: number[] = [];
    for (const text of choiceTexts) {
      let id = choiceMap.get(text);
      if (!id && CREATE_MISSING_CHOICES) {
        id = await createChoice(text);
        if (id > 0) {
          choiceMap.set(text, id);
          console.log(`   ➕ Created Choice "${text}" (#${id})`);
        }
      }
      if (id) choiceIds.push(id);
    }

    // quiz リレーション
    const quizId = await resolveQuizId(row.quiz);

    // Question payload（新フィールド: type, quiz, 既存: choices）
    const payload: any = {
      questionid: qid,
      title: row.title ?? '',
      text: row.text ?? '',
      code: row.code ?? '',
      hint: row.hint ?? '',
      answer: row.answer ?? '',
      explanation: row.explanation ?? '',
      type: normalizeQuestionType(row),
    };

    const connectChoices = choiceIds.filter((id) => id > 0);
    if (connectChoices.length > 0) {
      payload.choices = { connect: connectChoices.map((id) => ({ id })) };
    }
    if (quizId && quizId > 0) {
      payload.quiz = { connect: [{ id: quizId }] };
    }

    // 作成
    const newId = await createQuestion(payload);
    console.log(`✅ Created Question#${qid} (id=${newId}) with choices=[${choiceIds.join(', ')}] quiz=${quizId ?? 'null'}`);

    // 直後検証（choicesが0件なら注意喚起）
    const ok = await verifyQuestionChoices(newId);
    if (!ok) {
      console.warn('   ⚠️ Warning: 作成後に choices の紐付けが確認できませんでした。');
      console.warn('      - Strapi の Content-Type Builder で Question→choices が「多対多」になっているか');
      console.warn('      - RESTでは data: { choices: [id...] } で渡す形式が正しいか を確認してください。');
    }
  }

  console.log('\n🎉 Import completed!');
}

main().catch((e) => {
  console.error('❌ Error:', e);
  process.exit(1);
});
