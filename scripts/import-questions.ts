import 'dotenv/config';
import fs from 'fs';
import csv from 'csv-parser';
import fetch from 'node-fetch';

type StrapiEntity<T> = { id: number; attributes: T };
type StrapiList<T> = { data: Array<StrapiEntity<T>>; meta: { pagination?: { page: number; pageSize: number; pageCount: number; total: number } } };
type StrapiItem<T> = { data: StrapiEntity<T> | null };

const STRAPI_URL = process.env.STRAPI_URL?.replace(/\/$/, '') || 'http://localhost:1337';
const API = `${STRAPI_URL}/api`;
const TOKEN = process.env.STRAPI_TOKEN || '';
const CSV_PATH = process.env.CSV_PATH || './questions.csv';
const START_FROM_ID = Number(process.env.START_FROM_ID || 21);

if (!TOKEN) {
  console.error('❌ 環境変数 STRAPI_TOKEN が設定されていません。');
  process.exit(1);
}

const headers = {
  'Content-Type': 'application/json',
  Authorization: `Bearer ${TOKEN}`,
};

/** 文字列の同一性を安定させるための正規化（必要なら調整） */
function normalizeChoiceText(s: string): string {
  return s.trim().replace(/\s+/g, ' '); // 余分な空白を1つに
}

/** Strapi: ページングで全Choiceを取得（text -> id の Map） */
async function fetchAllChoicesMap(): Promise<Map<string, number>> {
  const map = new Map<string, number>();
  let page = 1;
  const pageSize = 100;

  while (true) {
    // ※ fields 指定を外す（pagination が確実に返る＆ attrs をそのまま受ける）
    const url = `${API}/choices?pagination[page]=${page}&pagination[pageSize]=${pageSize}`;
    const res = await fetch(url, { headers });

    if (!res.ok) {
      const body = await res.text();
      throw new Error(`Failed to fetch choices page ${page}: ${res.status} ${res.statusText} ${body}`);
    }

    const json = (await res.json()) as any;
    const data = json?.data;
    if (!Array.isArray(data)) {
      throw new Error(`Unexpected /choices response: ${JSON.stringify(json, null, 2)}`);
    }

    for (const row of data) {
      const text: unknown = row?.attributes?.text;
      if (typeof text !== 'string') {
        console.warn(`⚠️ Choice#${row?.id} has no 'text' field; attrs keys: ${Object.keys(row?.attributes ?? {}).join(', ')}`);
        continue;
      }
      const key = normalizeChoiceText(text);
      if (!map.has(key)) map.set(key, Number(row.id));
    }

    const p = json?.meta?.pagination;
    if (!p || p.page >= p.pageCount) break;
    page++;
  }

  return map;
}


async function findQuestionByQuestionId(questionid: number) {
  const url = `${API}/questions?filters[questionid][$eq]=${encodeURIComponent(String(questionid))}&pagination[pageSize]=1`;
  const res = await fetch(url, { headers });
  const json = (await res.json()) as StrapiList<unknown>;
  return json.data?.[0] ?? null;
}

async function createChoice(text: string): Promise<number> {
  const body = { data: { text } };
  const res = await fetch(`${API}/choices`, { method: 'POST', headers, body: JSON.stringify(body) });
  if (!res.ok) {
    const err = await res.text();
    throw new Error(`Choice create failed: ${res.status} ${res.statusText} ${err}`);
  }
  const json = (await res.json()) as StrapiItem<{ text: string }>;
  return json.data!.id;
}

async function createQuestion(payload: any): Promise<number> {
  const res = await fetch(`${API}/questions`, { method: 'POST', headers, body: JSON.stringify({ data: payload }) });
  if (!res.ok) {
    const err = await res.text();
    throw new Error(`Question create failed: ${res.status} ${res.statusText} ${err}`);
  }
  const json = (await res.json()) as StrapiItem<any>;
  return json.data!.id;
}

type CsvRow = {
  questionid: string;
  title: string;
  text: string;
  code?: string;
  hint?: string;
  choices: string; // カンマ区切り
  answer: string;
  explanation?: string;
};

async function main() {
  console.log('🚀 Start import with 1-pass upsert (Question + Choice)');
  console.log(`📄 CSV: ${CSV_PATH}`);
  console.log(`➡️  questionid >= ${START_FROM_ID} を処理`);

  // 1) 既存Choiceを全件マップへ（text正規化 → id）
  console.log('📥 Fetching existing choices...');
  const choiceMap = await fetchAllChoicesMap();
  console.log(`   Found ${choiceMap.size} choices in Strapi`);

  // 2) CSV読み込み
  const rows: CsvRow[] = [];
  await new Promise<void>((resolve, reject) => {
    fs.createReadStream(CSV_PATH)
      .pipe(csv())
      .on('data', (r: CsvRow) => rows.push(r))
      .on('end', () => resolve())
      .on('error', reject);
  });

  // 3) 1パス処理
  for (const row of rows) {
    const qid = Number(row.questionid);
    if (!Number.isFinite(qid)) {
      console.warn(`⚠️ questionidが数値でない行をスキップ: "${row.questionid}"`);
      continue;
    }
    if (qid < START_FROM_ID) {
      // 既存1-20を無視（または存在チェックしてスキップ）
      continue;
    }

    // 既に同じquestionidが存在するならスキップ（安全策）
    const existingQ = await findQuestionByQuestionId(qid);
    if (existingQ) {
      console.log(`⏭️  Question#${qid} は既に存在。スキップ`);
      continue;
    }

    console.log(`\n--- Processing Question#${qid} ---`);

    // choices: "map, filter, reduce" → [ids]
    const choiceTexts = (row.choices || '')
      .split(',')
      .map((s) => s.trim())
      .filter(Boolean);

    const choiceIds: number[] = [];
    for (const raw of choiceTexts) {
      const key = normalizeChoiceText(raw);
      let id = choiceMap.get(key);
      if (!id) {
        id = await createChoice(key); // ※ text=key で作成
        choiceMap.set(key, id);
        console.log(`   ➕ Created Choice "${key}" (#${id})`);
      }
      choiceIds.push(id);
    }

    // Question作成（多対多は choices: [id...] を渡す）
    const payload = {
      questionid: qid,
      title: row.title ?? '',
      text: row.text ?? '',
      code: row.code ?? '',
      hint: row.hint ?? '',
      answer: row.answer ?? '',
      explanation: row.explanation ?? '',
      choices: choiceIds,
    };

    const newId = await createQuestion(payload);
    console.log(`✅ Created Question#${qid} (#${newId}) with choices: [${choiceIds.join(', ')}]`);
  }

  console.log('\n🎉 Import completed (1-pass)!');
}

main().catch((e) => {
  console.error('❌ Error:', e);
  process.exit(1);
});
