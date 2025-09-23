import { Component, inject } from '@angular/core';
import { CommonModule } from '@angular/common';
import { Router } from '@angular/router';
import { MatToolbarModule } from '@angular/material/toolbar';
import { MatButtonModule } from '@angular/material/button';
import { HeaderComponent } from "./shared/header/header.component";
import { UserService } from './services/user.service';

@Component({
  selector: 'app-home',
  standalone: true,
  imports: [
    CommonModule,
    MatToolbarModule,
    MatButtonModule,
    HeaderComponent
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
    this.router.navigate(['/app-mode-duration']);
  }

  onProfileClick(): void {
    console.log('Profile クリック');
  }

  onHistoryClick(): void {
    console.log('Progress/History クリック');
  }
}
