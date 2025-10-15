// src/app/services/user.service.ts
import { Injectable, inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { BehaviorSubject, Observable } from 'rxjs';
import { environment } from '../../environments/environment.development'; // 後で environment に寄せる
import { HttpParams } from '@angular/common/http';

@Injectable({ providedIn: 'root' })
export class UserService {
  private http = inject(HttpClient);
  private baseUrl = `${environment.apiBase}/api`; 
  private tokenKey = 'jwt';

  // ログイン状態のストリーム
  private loggedInSubject = new BehaviorSubject<boolean>(this.hasToken());
  isLoggedIn$ = this.loggedInSubject.asObservable();

  signUp(payload: { username: string; email: string; password: string }): Observable<any> {
    return this.http.post(`${this.baseUrl}/auth/local/register`, payload);
  }

  login(payload: { identifier: string; password: string }): Observable<any> {
    return this.http.post(`${this.baseUrl}/auth/local`, payload);
  }

  get token(): string | null {
    return localStorage.getItem(this.tokenKey);
  }

  private hasToken(): boolean {
    const t = localStorage.getItem(this.tokenKey);
    return !! t && t.trim() !== '';
  }

  isLoggedIn(): boolean {
    return this.hasToken();
  }

  saveToken(token: string): void {
    localStorage.setItem(this.tokenKey, token);
    this.loggedInSubject.next(true);
  }

  logout(): void {
    localStorage.removeItem(this.tokenKey);
    this.loggedInSubject.next(false);
  }

  // ログイン中ユーザー情報の取得
  getMe(): Observable<{ id: number; username: string; email: string }> {
    return this.http.get<{ id: number; username: string; email: string }>(
      `${this.baseUrl}/users/me`
    );
  }


}

