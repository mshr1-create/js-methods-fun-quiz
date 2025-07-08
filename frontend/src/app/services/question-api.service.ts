// frontend/src/app/services/question-api.service.ts
import { Injectable, inject } from '@angular/core';
import { HttpClient }            from '@angular/common/http';
import { Observable }            from 'rxjs';
import { Question }              from '../models/question.model';

@Injectable({ providedIn: 'root' })
export class QuestionApiService {
  private http = inject(HttpClient);
  private readonly baseUrl = '/api/quizzes';

  fetchByLevel(level: string): Observable<Question[]> {
    return this.http.get<Question[]>(`${this.baseUrl}?mode=${level}`);
  }
}
