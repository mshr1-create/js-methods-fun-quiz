import { Injectable, inject } from "@angular/core";
import { Question } from "../models/question.model";
import { HttpClient, HttpParams } from "@angular/common/http";
import { Observable, of } from "rxjs";
import { map, catchError } from "rxjs/operators";
import { Quiz } from "../models/quiz.model";

// Strapi のフラットな Quiz レスポンス型定義
interface ApiQuestionAttrs {
  id: number;
  text: string;
  hint: string;
  options: string[];
  quizid: number;
  explanation: string;
  type: 'mcq' | 'text';
  order: number;
}

interface QuizResponse {
  data: Quiz[];
}


type Level = 'beginner' | 'intermediate' | 'advanced';

@Injectable({ providedIn: 'root' })
export class QuizService {
  private http = inject(HttpClient);
  // cache: includes correctAnswer, methodName, explanation, order
  private questionsWithAnswers: (Question & {
    correctAnswer: string;
    methodName?: string;
    explanation?: string;
    order: number;
  })[] = [];

  /** Quiz → Questions をまとめて取得し、Question[] を返す */
  getQuizzes(level: Level): Observable<Question[]> {
    const params = new HttpParams()
      .set('filters[mode][$eq]', level)
      .set('populate', 'questions');
  
    return this.http
      .get<QuizResponse>(`http://localhost:1337/api/quizzes`, { params })
      .pipe(
        map(res => {
          // 取得した Quiz レコード（mode に合ったもの）
          const quizItem = res.data[1];
          console.log('res', res);
          console.log(quizItem);
          // ネストされた Question 配列を取り出し
          const rawQs = quizItem.questions;
          console.log('rawQs', rawQs);
          return rawQs.map((question: Question) => {
            // Question 型にマッピング
            return {
              id: question.id,
              text: question.text,
              hint: question.hint ?? '',
              options: question.options ?? [],
              quizid: question.quizid ?? 0, // quizid がない場合は 0 を設定
              explanation: question.explanation ?? '',
              type: question.type === 'mcq' ? 'multiple' : '',
              order: question.order ?? 0 // order がない場合は 0 を設定
            };
          }
          );
        }),
        catchError(err => {
          console.error('getQuizzes error', err);
          return of([] as Question[]);
        })
      );
  }

  

  isCorrect(id: number, answer: string): boolean {
    const q = this.questionsWithAnswers.find(x => x.id === id);
    return q ? q.correctAnswer === answer : false;
  }

  getMethodName(id: number): string {
    return this.questionsWithAnswers.find(x => x.id === id)?.methodName ?? '';
  }

  getExplanation(id: number): string {
    return this.questionsWithAnswers.find(x => x.id === id)?.explanation ?? '';
  }
}


