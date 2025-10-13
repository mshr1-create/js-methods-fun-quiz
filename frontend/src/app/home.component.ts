import { Component, inject } from '@angular/core';
import { CommonModule } from '@angular/common';
import { Router } from '@angular/router';
import { MatToolbarModule } from '@angular/material/toolbar';
import { MatButtonModule } from '@angular/material/button';
import { HeaderComponent } from "./shared/header/header.component";
import { UserService } from './services/user.service';
import { ProfileComponent } from './pages/profile/profile.component';

@Component({
  selector: 'home',
  standalone: true,
  imports: [
    CommonModule,
    MatToolbarModule,
    MatButtonModule,
    HeaderComponent,
],
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent {

  constructor(private router: Router) {}
  private user = inject(UserService);
  readonly isLoggedIn$ = this.user.isLoggedIn$; // BehaviorSubject をそのまま公開

  onModeClick(): void {
    console.log('Mode & Duration クリック');
    this.router.navigate(['/mode']);
  }

  onProfileClick(): void {
    console.log('編集ボタンをクリック');
    this.router.navigate(['/profile']);
  }

  onHistoryClick(): void {
    console.log('Progress/History クリック');
    this.router.navigate(['/history']);
  }
}
