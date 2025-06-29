export interface Quiz {
    id: number;
    title: string;
    mode: 'beginner' | 'intermediate' | 'advanced';
    duration: number;
    questionCount: number;
}
