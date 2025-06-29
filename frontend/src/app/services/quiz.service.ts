import { Injectable, inject } from "@angular/core";
import { Question } from "../models/question.model";
import { HttpClient } from "@angular/common/http";
import { Observable, map } from "rxjs";


type Level = 'beginner'|'intermediate'|'advanced';

@Injectable({ providedIn:'root' })
export class QuizService {
    private http = inject(HttpClient);
    // APIから取得した問題と回答を保持する
    private questionsWithAnswers: (Question & { correctAnswer : string; methodName? : string; explanation?: string})[] = []; 

    /** API から問題を取得し、サービス内に保持する*/
    getQuizzes(level: Level): Observable<Question[]> {
        const mockApiUrl = `http://localhost:1337/api/quizzes?mode=${level}`;
        return this.http
            .get<{ data: (Question & { 
                    correctAnswer: string; 
                    methodName?: string; 
                    explanation?: string 
                })[];
                meta: any
                }>(mockApiUrl)
            .pipe(
                map(res => {
                    console.log('APIから取得した問題:', res.data);
                    // ①ラッパーから配列だけ取り出す
                    const items = res.data;
                    // ②サービス内キャッシュに丸ごと保存
                    this.questionsWithAnswers = items;
                    // ③Question部分だけを返す
                    return items.map(({correctAnswer, methodName, explanation, ...q}) => q); 
                })
            );
};

    isCorrect(id: number, answer: string): boolean {
        // ID ごとの正答チェックを実装
        const question = this.questionsWithAnswers.find(q => q.id === id);
        return question ? question.correctAnswer === answer : false;
    }

        /** 解答メソッド名を取得（フィードバック用） */
    getMethodName(id: number): string {
        // ID ごとの解答メソッド名を返す
        const question = this.questionsWithAnswers.find(q => q.id === id);
        return question?.methodName ?? '';            
    }
    
        /** 解説テキストを取得（フィードバック用） */
    getExplanation(id: number): string {
            // 問題IDに応じた解説を返す
            const question = this.questionsWithAnswers.find(q => q.id === id);
            return question?.explanation ?? '';
    }
}
