import { Injectable, inject } from "@angular/core";
import { Question } from "../models/question.model";
import { HttpClient, HttpParams } from "@angular/common/http";
import { Observable, of } from "rxjs";
import { map, catchError } from "rxjs/operators";
import { Quiz } from "../models/quiz.model";


interface QuizResponse {
  data: Quiz[];
}

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
              type: question.type === 'mcq' ? 'multiple' : 'input', // type がない場合は 'text' を設定
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
}
