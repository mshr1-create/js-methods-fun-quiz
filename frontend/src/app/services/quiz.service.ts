import { Injectable, inject } from "@angular/core";
import { Question } from "../models/question.model";
import { HttpClient, HttpParams } from "@angular/common/http";
import { Observable, of } from "rxjs";
import { map, catchError } from "rxjs/operators";
import { Quiz } from "../models/quiz.model";


interface QuizResponse {
  data: Quiz[];
}

type Level = 'beginner' | 'intermediate' | 'advanced';

@Injectable({ providedIn: 'root' })
export class QuizService {
  // cache: includes correctAnswer, methodName, explanation, order
  private questionsWithAnswers: (Question & {
    correctAnswer: string;
    methodName?: string;
    explanation?: string;
    order: number;
  })[] = [];
    private http = inject(HttpClient);
    /** ★ バッキングフィールドを追加 */
    private _currentDurationSec = 0;

  

  /** Quiz → Questions をまとめて取得し、Question[] を返す */
  getQuiz(level: Level): Observable<Question[]> {
    const params = new HttpParams()
      .set('filters[mode][$eq]', level)
      .set('populate', 'questions.choices'); // choices をネストして取得

    return this.http
      .get<QuizResponse>(`http://localhost:1337/api/quizzes`, { params })
      .pipe(
        map(res => {
          // 条件に基づいてクイズを選択
          const quizItem = res.data.find(item => item.questions && item.questions.length > 0) || res.data[0];
          if (!quizItem) {
            throw new Error('No quiz found for the specified level');
          }
          // durationの情報をログに出力
          console.log(`Quiz duration for level ${level}:`, quizItem.duration);
          const timeLimit = quizItem.duration * 60; // 分を秒に変換
          // durationの情報をキャッシュに保存
          this._currentDurationSec = timeLimit;
          console.log('res', res);
          console.log(quizItem);
          // ネストされた Question 配列を取り出し
          const rawQs = quizItem.questions;
          console.log('rawQs', rawQs);
          
          return rawQs.map((question: Question) => {
            console.log('questionsWithAnswers', this.questionsWithAnswers);
            // 正解のtextを取得
            const rightChoice = question.choices.find(c => c.iscorrect);
            const rightText   = rightChoice?.text ?? '';
            // correctAnswer をキャッシュに保存
            this.questionsWithAnswers.push({
              ...question, // 浅いコピー
              correctAnswer: rightText, // 正解のテキストを保存
            })

            // Question 型にマッピング
            return {
              id: question.id,
              text: question.text,
              hint: question.hint ?? '',
              choices: question.choices?.map(choice => ({
                id: choice.id, // Choice 型に必要な id を追加
                text: choice.text,
                iscorrect: choice.iscorrect ?? false // Choice 型に必要な iscorrect を追加
              })) ?? [], // choices がない場合は空配列を設定
              quizid: question.quizid ?? 0, // quizid がない場合は 0 を設定
              explanation: question.explanation ?? '',
              type: question.type === 'mcq' ? 'multiple' : '',
              order: question.order ?? 0, // order がない場合は 0 を設定
              duration: timeLimit, // クイズの制限時間を追加
              
            };

          });
        }),
        catchError(err => {
          console.error('getQuiz error', err);
          return of([] as Question[]);
        })
      );
  }

  

  isCorrect(id: number, answer: string): boolean {
    const q = this.questionsWithAnswers.find(x => x.id === id);
    console.log({ expected: q?.correctAnswer, answer });
    return q ? q.correctAnswer === answer : false;
  }


  getMethodName(id: number): string {
    return this.questionsWithAnswers.find(x => x.id === id)?.methodName ?? '';
  }

  getExplanation(id: number): string {
    return this.questionsWithAnswers.find(x => x.id === id)?.explanation ?? '';
  }

  get currentDurationSec(): number {
    return this._currentDurationSec;
  }
}
