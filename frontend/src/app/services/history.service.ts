import { Injectable, inject } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { Observable, map } from 'rxjs';
import { environment } from '../../environments/environment.development';
import { StudySession, StudyMode, StrapiListResponse } from '../models/study-session.model';
import { UserService } from './user.service';

@Injectable({
  providedIn: 'root'
})
export class HistoryService {
  private http = inject(HttpClient);
  private readonly baseUrl = `${environment.apiBase}/api/study-sessions`;
  // private userService = inject(UserService); // 現状未使用

  list(options?: {
    page?: number;
    pageSize?: number;
    sort?: string; // e.g. 'startedAt:desc'
    modeEq?: StudyMode;
    userOnly?: boolean; // 将来拡張用（Strapi側のpoliciesで制限が理想）
  }): Observable<{ rows: StudySession[]; total: number; pageCount: number }>{
    let params = new HttpParams();
    const page = options?.page ?? 1;
    const pageSize = options?.pageSize ?? 10;
    params = params.set('pagination[page]', page).set('pagination[pageSize]', pageSize);
    if (options?.sort) params = params.set('sort', options.sort);
    if (options?.modeEq) params = params.set('filters[mode][$eq]', options.modeEq);
    // populate は不要だが将来 relations を足す場合のために残す
    // params = params.set('populate', '*');

    return this.http
      .get<StrapiListResponse<StudySession>>(this.baseUrl, { params })
      .pipe(
        map(res => {
          const list = Array.isArray(res?.data) ? res.data : [];

          const rows: StudySession[] = list.map((it: any) => {
            const a = it?.attributes ?? it; // Strapi v4 attributes or flattened fallback
            return {
              id: it?.id ?? a?.id ?? 0,
              mode: a?.mode,
              startedAt: a?.startedAt,
              finishedAt: a?.finishedAt ?? null,
              durationSec: a?.durationSec ?? null,
              score: a?.score ?? null,
              correctCount: a?.correctCount ?? null,
              totalCount: a?.totalCount ?? null,
              maxStreak: a?.maxStreak ?? null,
            } as StudySession;
          }).filter(r => !!r.mode && !!r.startedAt);
          const total = res.meta.pagination.total;
          const pageCount = res.meta.pagination.pageCount;
          return { rows, total, pageCount };
        })
      );
  }

  create(body: {
    mode: StudyMode;
    startedAt: string;
    finishedAt?: string | null;
    durationSec?: number | null;
    score?: number | null;
    correctCount?: number | null;
    totalCount?: number | null;
    maxStreak?: number | null;
  }): Observable<StudySession> {
    const payload = { data: { ...body } };
    return this.http.post<any>(this.baseUrl, payload).pipe(
      map(res => {
        const it = res?.data ?? res;
        const a = it?.attributes ?? it;
        return {
          id: it?.id ?? a?.id ?? 0,
          mode: a?.mode,
          startedAt: a?.startedAt,
          finishedAt: a?.finishedAt ?? null,
          durationSec: a?.durationSec ?? null,
          score: a?.score ?? null,
          correctCount: a?.correctCount ?? null,
          totalCount: a?.totalCount ?? null,
          maxStreak: a?.maxStreak ?? null,
        } as StudySession;
      })
    );
  }
}
