import { Injectable } from "@angular/core";
import { Question } from "../models/question.model";


@Injectable({ providedIn: 'root' })
export class QuizService {
    private data: { [key in 'beginner' | 'intermediate' | 'advanced']: Question[] } = {
        beginner: [ /* 初級: 全問 multiple */ ],
        intermediate: [ /* 中級: half multiple, half text */ ],
        advanced: [ /* 上級: 全問 text */ ]
    };

    getQuestions(level: 'beginner' | 'intermediate' | 'advanced'): Question[] {
        return this.data[level] || [];
    }

    isCorrect(id: number, answer: string): boolean {
        // 正解判定のロジック
        return false;
    }
}
