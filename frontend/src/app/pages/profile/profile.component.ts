import { Component, inject } from '@angular/core';
import { CommonModule } from '@angular/common';
import { Router } from '@angular/router';
import { MatToolbarModule } from '@angular/material/toolbar';
import { MatButtonModule } from '@angular/material/button';
import { UserService } from '../../services/user.service';
import { MatCardModule } from '@angular/material/card';
import { MatDividerModule } from '@angular/material/divider';

@Component({
  selector: 'profile',
  standalone: true,
  imports: [
    CommonModule,
    MatToolbarModule,
    MatButtonModule,
    MatCardModule,
    MatDividerModule,
],
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.css']
})
export class ProfileComponent {
  constructor(private router: Router) {}
  private user = inject(UserService);
  readonly isLoggedIn$ = this.user.isLoggedIn$; // BehaviorSubject をそのまま公開

  username: string | null = null;
  email: string | null = null;

  ngOnInit(): void {
    // トークンがあれば現在ユーザーを取得
    if (this.user.isLoggedIn()) {
      this.user.getMe().subscribe((me) => {
        this.username = me.username;
        this.email = me.email;
      });
    }
  }

  onEditClick(): void {
    console.log('編集ボタンをクリック');
    this.router.navigate(['/edit']);
  }

  onLogout() {
    this.user.logout();
    this.router.navigate(['/login'], { replaceUrl: true });
  }
  onHomeClick() {
    this.router.navigate(['/home']);
  }
}
