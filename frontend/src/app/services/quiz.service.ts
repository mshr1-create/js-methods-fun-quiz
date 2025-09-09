import { Injectable, inject } from "@angular/core";
import { Question } from "../models/question.model";
import { HttpClient, HttpParams } from "@angular/common/http";
import { Observable, of } from "rxjs";
import { map, catchError } from "rxjs/operators";
import { Quiz } from "../models/quiz.model";


interface QuizResponse {
  data: Quiz[];
}

export interface ResultItem {
  questionId: number;
  userAnswer: string;
  correct: boolean;
  method?: string;
  explanation: string;
  answerTimeSec: number | null;
}
export interface QuestionSnap { id: number; text: string; code: string; }
export interface Summary { correctCount: number; avgTimeSec: number | null; maxStreak: number; }

const KEY_RESULTS = 'results';
const KEY_SNAPS   = 'snaps';
const KEY_SUMMARY = 'summary';

type Mode = 'beginner' | 'intermediate' | 'advanced';

@Injectable({ providedIn: 'root' })
export class QuizService {
  // cache: includes correctAnswer, methodName, explanation, order
  private questionsWithAnswers: (Question & {
    correctAnswer: string;
    methodName?: string;
    explanation?: string;
    order: number;
  })[] = [];
  private resultsCache: ResultItem[] | null = null;
  private snapsCache:   QuestionSnap[] | null = null;
  private summaryCache: Summary | null = null;
  private http = inject(HttpClient);

  /** Quiz → Questions をまとめて取得し、Question[] を返す */
  getQuestion(mode: Mode): Observable<Question[]> {
    const params = new HttpParams()
      .set('filters[mode][$eq]', mode)
      // .set('filters[duration][$eq]', duration)
      .set('populate', 'questions.choices'); // choices をネストして取得

    return this.http
      .get<QuizResponse>(`http://localhost:1337/api/quizzes`, { params })
      .pipe(
        map(res => {
          // 条件に基づいてクイズを選択
          const quizItem = res.data.find(item => item.questions && item.questions.length > 0) || res.data[0];
          if (!quizItem) {
            throw new Error('No quiz found for the specified mode');
          }
          console.log('res', res);
          console.log(quizItem);
          // ネストされた Question 配列を取り出し
          const rawQs = quizItem.questions;
          console.log('rawQs', rawQs);
          
          return rawQs.map((question: Question) => {
            console.log('questionsWithAnswers', this.questionsWithAnswers);
            // 正解のtextを取得
            const rightText = question.answer;
            this.questionsWithAnswers.push({
              ...question, // 浅いコピー
              correctAnswer: rightText, // 正解のテキストを保存
            })

            // Question 型にマッピング
            return {
              id: question.id,
              text: question.text,
              code: question.code ?? '', // code がない場合は空文字を設定
              hint: question.hint ?? '',
              choices: question.choices?.map(choice => ({
                id: choice.id, // Choice 型に必要な id を追加
                text: choice.text,
                iscorrect: choice.iscorrect ?? false // Choice 型に必要な iscorrect を追加
              })) ?? [], // choices がない場合は空配列を設定
              quizid: question.quizid ?? 0, // quizid がない場合は 0 を設定
              explanation: question.explanation ?? '',
              type: question.type === 'multiple' ? 'multiple' : 'input', // type がない場合は 'text' を設定
              order: question.order ?? 0, // order がない場合は 0 を設定
              answer: question.answer ?? '' // answer がない場合は空文字を設定
            };

          });
        }),
        catchError(err => {
          console.error('getQuestion error', err);
          return of([] as Question[]);
        })
      );
  }

  // 共通の判定関数
  judge(questionId: number, rawAnswer: unknown): ResultItem {
    const userAnswer = this.normalizeAnswer(rawAnswer);
    const q = this.questionsWithAnswers.find(x => x.id === questionId);
    const correct = q ? q.correctAnswer === userAnswer : false;
    const method = this.getMethodName?.(questionId) ?? '';
    const explanation = this.getExplanation?.(questionId) ?? '';
    return { questionId, userAnswer, correct, method, explanation, answerTimeSec: null };
  }
  
  // 互換用：既存コードが呼んでいても壊さない
  isCorrect(id: number, answer: string): boolean {
    return this.judge(id, answer).correct;
  }
  
  finishQuiz(
    questions: Question[],
    answers: Record<number, string>,
    totalDurationSec: number,
    remainingSec: number,
    perQuestionTime?: Record<number, number>
  ): void {
    const results = questions.map(q => {
      const ans = this.normalizeAnswer(answers[q.id]);
      const r = this.judge(q.id, ans);
      r.answerTimeSec = perQuestionTime?.[q.id] ?? null;
      return r;
    });

    const correctCount = results.reduce((a, r) => a + (r.correct ? 1 : 0), 0);
    const answerCount  = results.length;
    const elapsedSec   = Math.max(0, totalDurationSec - (remainingSec ?? 0));
    const avgTimeSec   = answerCount === 0 ? null : Math.round(elapsedSec / answerCount);
    const maxStreak    = this.computeMaxStreak(results);
    const summary: Summary = { correctCount, avgTimeSec, maxStreak };

    const snaps: QuestionSnap[] = questions.map(q => ({ id: q.id, text: q.text, code: q.code ?? '' }));

    this.resultsCache = results;
    this.snapsCache   = snaps;
    this.summaryCache = summary;
    sessionStorage.setItem(KEY_RESULTS, JSON.stringify(results));
    sessionStorage.setItem(KEY_SNAPS,   JSON.stringify(snaps));
    sessionStorage.setItem(KEY_SUMMARY, JSON.stringify(summary));
  }

  getResults(): ResultItem[] {
    if (this.resultsCache === null) {
      const raw = sessionStorage.getItem(KEY_RESULTS);
      this.resultsCache = raw ? (JSON.parse(raw) as ResultItem[]) : [];
    }
    return this.resultsCache;
  }
  getSnaps(): QuestionSnap[] {
    if (this.snapsCache === null){
      const raw = sessionStorage.getItem(KEY_SNAPS);
      this.snapsCache = raw ? (JSON.parse(raw) as QuestionSnap[]) : [];
    }
    return this.snapsCache;
  }
  getSummary(): Summary | null {
    if (this.summaryCache !== null) return this.summaryCache;
    const raw = sessionStorage.getItem(KEY_SUMMARY);
    this.summaryCache = raw ? JSON.parse(raw) : null;
    return this.summaryCache;
  }

  private normalizeAnswer(v: unknown): string {
    if (v == null) return '未解答';
    if (Array.isArray(v)) return v.length ? v.join(', ') : '未解答';
    const s = String(v).trim();
    return s ? s : '未解答';
  }
  private computeMaxStreak(rows: ResultItem[]): number {
    let cur = 0, max = 0;
    for (const r of rows) { if (r.correct) { cur++; max = Math.max(max, cur); } else { cur = 0; } }
    return max;
  }

  getMethodName(id: number): string {
    return this.questionsWithAnswers.find(x => x.id === id)?.methodName ?? '';
  }

  getExplanation(id: number): string {
    return this.questionsWithAnswers.find(x => x.id === id)?.explanation ?? '';
  }
}
