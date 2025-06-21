export interface Question {
    id: number;
    title: string;
    code: string;
    options: string[];
    answerType: 'multiple'|'text';
    hintAvailable: boolean;
}
