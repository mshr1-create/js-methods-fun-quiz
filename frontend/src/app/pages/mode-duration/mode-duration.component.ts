import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { RouterModule } from '@angular/router';
import { CommonModule } from '@angular/common';
import { MatToolbarModule } from '@angular/material/toolbar';
import { MatButtonToggleModule } from '@angular/material/button-toggle';
import { Router } from '@angular/router';
import {FormGroup, FormControl, ReactiveFormsModule} from '@angular/forms';
import { QuizService } from '../../services/quiz.service';

@Component({
  selector: 'app-mode-duration',
  standalone: true,
  imports: [
    CommonModule,
    FormsModule,
    RouterModule,
    MatToolbarModule,
    MatButtonToggleModule,
    ReactiveFormsModule
  ],
  templateUrl: './mode-duration.component.html',
  styleUrl: './mode-duration.component.css'
})
export class ModeDurationComponent {
  constructor(private router: Router, private quizService: QuizService) {}

  selectForm = new FormGroup({
    mode: new FormControl('beginner'),
    duration: new FormControl<number>(15),
  });

  onStartClick(): void {
    const { mode, duration } = this.selectForm.getRawValue() as { mode: string; duration: number }; // ここで値確定
    this.router.navigate(['/questions'], { queryParams: { mode, duration } });
    localStorage.setItem('duration',duration.toString());
    console.log('スタートボタンをクリック');
  }

  onBackClick(): void {
    console.log('戻るボタンをクリック');
    this.router.navigate(['app-home']);
  }
}
