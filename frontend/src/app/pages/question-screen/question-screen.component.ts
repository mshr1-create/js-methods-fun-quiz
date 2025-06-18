import { Component, OnInit, OnDestroy } from '@angular/core';
import { Question } from '../../models/question.model';
import { ActivatedRoute } from '@angular/router';
import { QuizService } from '../../services/quiz.service';
import { NgFor, NgIf } from '@angular/common';
import { CommonModule } from '@angular/common';
import { RouterModule } from '@angular/router';
import { MultipleChoiceComponent } from '../../shered/multiple-choice/multiple-choice/multiple-choice.component';
import { TextAnswerComponent } from '../../shered/text-answer/text-answer.component';
import { interval, Subscription } from 'rxjs';
import { takeWhile }            from 'rxjs/operators';
import { FeedbackPopupComponent, FeedbackData } from './feedback-popup/feedback-popup.component';

@Component({
  selector: 'app-question-screen',
  standalone: true,
  imports: [
    NgFor,
    NgIf,
    CommonModule,
    RouterModule,
    MultipleChoiceComponent,
    TextAnswerComponent,
    FeedbackPopupComponent
  ],
  templateUrl: './question-screen.component.html',
  styleUrls: ['./question-screen.component.css']
})


export class QuestionScreenComponent implements OnInit, OnDestroy {
  level!: 'beginner' | 'intermediate' | 'advanced';
  questions: Question[] = [];
  answers: Record<number, string> = {};
  feedbackMode: 'immediate' | 'deferred' = 'deferred';
  currentIndex = 0; // 現在の問題インデックス

  // タイマー残秒数
  private remainingSeconds = 6 * 60 + 30; // 6分30秒
  // 表示用文字列
  timerDisplay = '';
  // 定期購読保持用
  private timerSub?: Subscription;

    // ポップアップフィードバック
    popupOpen = false;
    feedbackData!: FeedbackData;

   // インラインフィードバック
    feedbackOpen: Record<number, boolean> = {};
    feedbackResult: Record<number, { correct: boolean; method?: string; explanation: string }> = {};

  constructor(
    private route: ActivatedRoute,
    private quizService: QuizService
  ) { 
    this.timerDisplay = this.formatTime(this.remainingSeconds);
  }

  ngOnInit() {
    this.level = this.route.snapshot.paramMap.get('level') as any;
    this.questions = this.quizService.getQuestions(this.level);
    this.feedbackMode = this.level === 'beginner' ? 'immediate' : 'deferred';
    // タイマー開始
    this.startTimer();
  }

  ngOnDestroy() {
    this.timerSub?.unsubscribe();
  }

  onAnswer(id: number, answer: string) {
    this.answers[id] = answer;
  }

  /// 「解答」ボタン押下
  onSubmit(id: number) {
    if (!this.answers[id]) return;

    if (this.feedbackMode === 'immediate') {
      const ok = this.quizService.isCorrect(id, this.answers[id]);
      const method = this.quizService.getMethodName?.(id) ?? '';
      const explanation = this.quizService.getExplanation?.(id) ?? '';
      this.feedbackData = { correct: ok, method, explanation };
      this.popupOpen = true;
    } else {
      this.showInlineFeedback(id);
    }
  }

  submitAll() {
    Object.keys(this.answers).forEach(key => this.showInlineFeedback(+key));
  }

  private showInlineFeedback(id: number) {
    const ok = this.quizService.isCorrect(id, this.answers[id]);
    const method = this.quizService.getMethodName?.(id) ?? '';
    const explanation = this.quizService.getExplanation?.(id) ?? '';
    this.feedbackResult[id] = { correct: ok, method, explanation };
    this.feedbackOpen[id] = true;
  }

  // フィードバックウインドウを閉じる
  onCloseFeedback(): void {
    this.popupOpen = false;
    // 次の問題表示ロジックなど
  }

  private startTimer() {
    this.timerSub = interval(1000)
      .pipe(takeWhile(() => this.remainingSeconds > 0))
      .subscribe(() => {
        this.remainingSeconds--;
        this.timerDisplay = this.formatTime(this.remainingSeconds);
      });
  }

  private formatTime(seconds: number): string {
    const m = Math.floor(seconds / 60);
    const s = (seconds % 60).toString().padStart(2, '0');
    return `${m}:${s}`;
  }
}
