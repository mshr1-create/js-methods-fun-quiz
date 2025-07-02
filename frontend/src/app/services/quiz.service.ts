import { Injectable, inject } from "@angular/core";
import { Question } from "../models/question.model";
import { HttpClient, HttpParams } from "@angular/common/http";
import { Observable, of } from "rxjs";
import { map, catchError } from "rxjs/operators";

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
interface ApiQuestion {
  id: number;
  attributes: ApiQuestionAttrs & {
    type: string | null; // Ensure 'type' exists in ApiQuestion
  };
}
// ↓ Quiz の生データ（attributes 内に questions.data）
interface ApiQuiz {
  id: number;
  attributes: {
    questions: { data: ApiQuestion[] };
    // …Quiz の他 attributes…
  };
}
interface QuizResponse {
  data: ApiQuiz[];
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
  // quiz.service.ts
  getQuizzes(level: Level): Observable<Question[]> {
    const params = new HttpParams()
      .set('filters[mode][$eq]', level)
      .set('populate', 'questions');
  
    return this.http
      .get<QuizResponse>(`http://localhost:1337/api/quizzes`, { params })
      .pipe(
        map(res => {
          // 取得した Quiz レコード（mode に合ったもの）
          const quizItem = res.data[0];
          // ネストされた Question 配列を取り出し
          const rawQs = quizItem.attributes.questions.data;
  
          // Question 型にマッピング
          const questions: Question[] = rawQs.map(({ id, attributes }) => ({
            id,
            text:        attributes.text,
            hint:        attributes.hint     ?? '',
            options:     attributes.options    ?? [], 
            quizid:      quizItem.id,
            explanation: attributes.explanation ?? '',
            type:        attributes.type === 'mcq' ? 'multiple' : 'text',
            order:       attributes.order   
          }));
  
          // order 順にソートして返却
          return questions.sort((a, b) => a.order - b.order);
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
