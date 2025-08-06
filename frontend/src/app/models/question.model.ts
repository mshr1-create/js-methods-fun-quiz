import { Choice } from "./choice.model";

export interface Question {
    id: number;
    text: string;
    code: string;
    hint: string;
    choices: Choice[];
    quizid: number;
    explanation: string;
    type: string;
    order: number;
    
}
