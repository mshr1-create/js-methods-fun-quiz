import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { RouterModule } from '@angular/router';
import { CommonModule } from '@angular/common';
import { UserService } from '../../services/user.service';
import { ErrorService } from '../../services/error.service';
import { inject } from '@angular/core';
import { firstValueFrom } from 'rxjs';
import { Router } from '@angular/router';

@Component({
  selector: 'app-login',
  standalone: true,
  imports: [
    CommonModule,
    FormsModule,
    RouterModule
  ],
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent {
  private userService = inject(UserService);
  private errorService = inject(ErrorService);
  private router = inject(Router);

  form = { email: '', password: '' };
  loading = false;
  errorMsg = '';

  async onSubmit() {
    this.errorMsg = '';
    this.loading = true;
    try {
      const res = await firstValueFrom(
        this.userService.login({
          identifier: this.form.email,
          password: this.form.password,
        })
      );

      console.log('ログイン成功:', res);
      await this.router.navigate(['/app-home']);
    } catch (e: unknown) {
      this.errorMsg = this.errorService.toFriendlyMessage(e);
      console.error(e);
    } finally {
      this.loading = false;
    }
  }

}
