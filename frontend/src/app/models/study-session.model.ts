export type StudyMode = 'beginner' | 'intermediate' | 'advanced';

export interface StudySession {
    id: number;
    mode: StudyMode;
    startedAt: string;         // ISO string
    finishedAt?: string | null;
    durationSec?: number | null;
    score?: number | null;
    correctCount?: number | null;
    totalCount?: number | null;
    maxStreak?: number | null;
}

// Strapi v4 共通レスポンス型（attributes ネストをフラット化するための補助）
export interface StrapiListResponse<T> {
    data: Array<{ id: number; attributes: any }>;
    meta: {
        pagination: { page: number; pageSize: number; pageCount: number; total: number };
    };
}


