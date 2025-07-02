export interface Question {
    id: number;
    text: string;
    hint: string;
    options: string[];
    quizid: number;
    explanation: string;
    type: 'multiple'|'text';
    order: number;
    
}
