import { Question } from './question.model';

export interface Quiz {
    id: number;
    title: string;
    mode: 'beginner' | 'intermediate' | 'advanced';
    duration: number;
    questionCount: number;
    questions: Question[];
}
