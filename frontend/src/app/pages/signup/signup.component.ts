import { Component, inject } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { Router, RouterModule } from '@angular/router';
import { CommonModule } from '@angular/common';
import { QuizService } from '../../services/quiz.service';
import { ErrorService } from '../../services/error.service';
import { UserService } from '../../services/user.service';

@Component({
  selector: 'app-signup',
  standalone: true,
  imports: [
    CommonModule,
    FormsModule,
    RouterModule
  ],
  templateUrl: './signup.component.html',
  styleUrls: ['./signup.component.css']
})
export class SignupComponent {
  private quizService = inject(QuizService);
  private errorService = inject(ErrorService);
  private router = inject(Router);
  private userService = inject(UserService);

  form = { username: '', email: '', password: '', confirm: '' };
  loading = false;
  errorMsg = '';

  async onSubmit() {
    this.errorMsg = '';

    if (this.form.password !== this.form.confirm) {
      this.errorMsg = 'パスワードが一致しません';
      return;
    }
    this.loading = true;
    try {
      const res = await this.userService
        .signUp({ username: this.form.username, email: this.form.email, password: this.form.password })
        .toPromise();

      await this.router.navigate(['/']); // 初回プロフィール画面などへ
    } catch (e: any) {
      this.errorMsg = this.errorService.toFriendlyMessage(e);
      console.error(e);
    } finally {
      this.loading = false;
    }
  }

}
