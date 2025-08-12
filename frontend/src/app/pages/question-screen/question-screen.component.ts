import { Component, OnInit, OnDestroy } from '@angular/core';
import { Question } from '../../models/question.model';
import { ActivatedRoute, ResolveStart } from '@angular/router';
import { QuizService } from '../../services/quiz.service';
import { NgFor, NgIf } from '@angular/common';
import { CommonModule } from '@angular/common';
import { RouterModule } from '@angular/router';
import { MultipleChoiceComponent } from '../../shared/multiple-choice/multiple-choice/multiple-choice.component';
import { TextAnswerComponent } from '../../shared/text-answer/text-answer.component';
import { interval, Subscription } from 'rxjs';
import { takeWhile }            from 'rxjs/operators';
import { FeedbackPopupComponent, FeedbackData } from './feedback-popup/feedback-popup.component';
import { HintDialogComponent } from "../../shared/hint-dialog/hint-dialog.component";
import { quizResolver } from './quiz.resolver';
import { Injectable } from '@angular/core';

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
    FeedbackPopupComponent,
    HintDialogComponent,
],
  templateUrl: './question-screen.component.html',
  styleUrls: ['./question-screen.component.css']
})

export class QuestionScreenComponent implements OnInit, OnDestroy {
  mode!: 'beginner' | 'intermediate' | 'advanced';
  questions: Question[] = [];
  answers: Record<number, string> = {};
  feedbackMode: 'immediate' | 'deferred' = 'deferred';
  currentIndex = 0; // 現在の問題インデックス
  duration: number = 0; // クイズの制限時間（秒単位）
  answered: Record<number, boolean> = {}; // 問題ごとの回答済みフラグ 
  quizResolver = quizResolver; // Resolverを使用するための変数
  
  private remainingSeconds!: number; // API 取得後に初期化
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
    // URLから 'mode' パラメータを取得して、this.levelに設定する
    const modeParam = this.route.snapshot.queryParamMap.get('mode');
    const durationParam = this.route.snapshot.queryParamMap.get('duration');
    this.duration = durationParam ? +durationParam : 15; // デフォルトは15分
    console.log('modeParam:', modeParam);
    console.log('durationParam:', durationParam);

    // パラメータが 'beginner', 'intermediate', 'advanced' のいずれかであることを確認
    if (modeParam === 'beginner' || modeParam === 'intermediate' || modeParam === 'advanced') {
      this.mode = modeParam;
    } else {
      // 不正なURLの場合はエラー処理やリダイレクトを行う
      console.error('Invalid mode parameter in URL');
      return; // 処理を中断
    }    
    
    // getQuestionはObservableを返すのでsubscribeする
    this.route.data.subscribe(d => {
      console.log('questions from service:', d['quiz']);
      this.questions = d['quiz'];
      // this.remainingSeconds = (+this.route.snapshot.queryParamMap.get('duration')!) * 60;
      this.remainingSeconds = this.duration * 60; // 秒単位に変換
      // randomize questions
      let numberOfQuestions = 5;
      let randomIndexes: number[] = [];
      if (this.duration === 10) {

        numberOfQuestions = 7; // 10分モードは3問
      }else if (this.duration === 15) {
        numberOfQuestions = 10; // 15分モードは5問
      } else if (this.duration === 30) {
        numberOfQuestions = 20; // 30分モードは10問
      }
      
      while (randomIndexes.length < numberOfQuestions) {
        const randomIndex = Math.floor(Math.random() * this.questions.length);
        if (!randomIndexes.includes(randomIndex)) {
          randomIndexes.push(randomIndex);
        }
      }
      this.questions = randomIndexes.map(index => this.questions[index]);
      console.log('randomized questions:', this.questions);

      this.timerDisplay = this.formatTime(this.remainingSeconds);
      // タイマー開始
      this.startTimer();
    });
    this.feedbackMode = this.mode === 'beginner' ? 'immediate' : 'deferred';
    

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
      this.answered[id] = true;
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
