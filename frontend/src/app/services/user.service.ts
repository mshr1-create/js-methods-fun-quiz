// src/app/services/user.service.ts
import { Injectable, inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { environment } from '../../environments/environment.development'; // 後で environment に寄せる

@Injectable({ providedIn: 'root' })
export class UserService {
  private http = inject(HttpClient);
  private baseUrl = `${environment.apiBase}/api`; 

  signUp(payload: { username: string; email: string; password: string }): Observable<any> {
    return this.http.post(`${this.baseUrl}/auth/local/register`, payload);
  }

  login(payload: { identifier: string; password: string }): Observable<any> {
    return this.http.post(`${this.baseUrl}/auth/local`, payload);
  }


}

