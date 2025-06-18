import { Injectable } from "@angular/core";
import { Question } from "../models/question.model";

// frontend/src/app/services/quiz.service.ts
type Level = 'beginner'|'intermediate'|'advanced';

@Injectable({ providedIn:'root' })
export class QuizService {
    private data: Record<Level, Question[]> = {
        beginner: [
            { id:1, title:'新しい配列の作成', code:`const nums=[1,2,3];\nconst res=nums._______(n=>n*2);`,
            options:['map','filter','reduce','forEach'], answerType:'multiple', hintAvailable:true },
        // …他8問…
    ],
    intermediate: [
      // たとえば最初の半数は multiple、後半は text
        { id:1, title:'文字列置換', code:`const text='foo';\n//…`, options:[], answerType:'text', hintAvailable:true },
      // …残り2問…
    ],
    advanced: [
      // 全問 text
        { id:1, title:'正規表現応用', code:`…`, options:[], answerType:'text', hintAvailable:false },
      // …
    ]
};
    getQuestions(level: Level): Question[] {
        return this.data[level];
    }

    isCorrect(id: number, answer: string): boolean {
        // ID ごとの正答チェックを実装
        return answer==='map'; // 仮
    }

        /** 解答メソッド名を取得（フィードバック用） */
    getMethodName(id: number): string {
            // 問題IDに応じたメソッド名を返す
        return '';
    }
    
        /** 解説テキストを取得（フィードバック用） */
    getExplanation(id: number): string {
            // 問題IDに応じた解説を返す
        return '';
    }
    
}
