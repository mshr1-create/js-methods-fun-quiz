import { Component, OnInit, OnDestroy } from '@angular/core';
import { Question } from '../../models/question.model';
import { ActivatedRoute} from '@angular/router';
import { QuizService } from '../../services/quiz.service';
import { NgFor, NgIf } from '@angular/common';
import { CommonModule } from '@angular/common';
import { RouterModule } from '@angular/router';
import { MultipleChoiceComponent } from '../../shared/multiple-choice/multiple-choice/multiple-choice.component';
import { InputAnswerComponent } from '../../shared/text-answer/input-answer.component';
import { interval, Subscription } from 'rxjs';
import { takeWhile }            from 'rxjs/operators';
import { FeedbackPopupComponent, FeedbackData } from './feedback-popup/feedback-popup.component';
import { HintDialogComponent } from "../../shared/hint-dialog/hint-dialog.component";
import { quizResolver } from './quiz.resolver';
import { Router } from '@angular/router';

@Component({
  selector: 'app-question-screen',
  standalone: true,
  imports: [
    NgFor,
    NgIf,
    CommonModule,
    RouterModule,
    MultipleChoiceComponent,
    InputAnswerComponent,
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
  errorMap: Record<number, boolean> = {};// 未回答エラーをカード単位で管理

  // 表示順の安定化用: question.id -> 1-based order
  idOrder: Record<number, number> = {};
  // 現在フィードバック表示対象の質問ID（即時/一括共通）
  currentQuestionId: number | null = null;
  // 一括採点のレビューキューは不要
  // reviewQueue: number[] = [];

  
  private remainingSeconds!: number; // API 取得後に初期化
  // 表示用文字列
  timerDisplay = '';
  // 定期購読保持用
  private timerSub?: Subscription;
  private finished = false; // ★二重送信/二重遷移防止フラグ

    // ポップアップフィードバック
    popupOpen = false;
    feedbackData!: FeedbackData;

   // インラインフィードバック
    feedbackOpen: Record<number, boolean> = {};
    feedbackResult: Record<number, { correct: boolean; method?: string; explanation: string }> = {};

  constructor(
    private route: ActivatedRoute,
    private quizService: QuizService,
    private router: Router
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
      console.log('Valid mode parameter:', modeParam);
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
      // randomize questions (安全に上限まで切り出し)
      let numberOfQuestions = 5;
      if (this.duration === 10) {
        numberOfQuestions = 7; // 10分モードは７問
      } else if (this.duration === 15) {
        numberOfQuestions = 10; // 15分モードは10問
      } else if (this.duration === 30) {
        numberOfQuestions = 20; // 30分モードは20問
      }
      const total = this.questions.length;
      const take = Math.min(numberOfQuestions, total);
      this.questions = [...this.questions]
        .sort(() => Math.random() - 0.5)
        .slice(0, take);
      console.log('randomized questions:', this.questions);

      // 質問配列が確定したタイミングでID→連番のマップを構築
      this.buildIdOrderMap();

      this.timerDisplay = this.formatTime(this.remainingSeconds);
      // タイマー開始
      this.startTimer();
      // セッション開始メタを保存（設定時間の分を一緒に保存）
      this.quizService.beginSession(this.mode, this.duration);
    });
    this.feedbackMode = this.mode === 'beginner' ? 'immediate' : 'deferred';
  }

  ngOnDestroy() {
    this.timerSub?.unsubscribe();
  }

  onAnswer(id: number, answer: string) {
    this.answers[id] = answer;
    if (answer?.trim()) this.errorMap[id] = false; // 赤枠を外す
  }

  /// 「解答」ボタン押下
  onSubmit(id: number) {
    
    // if (!this.validateAll()) return;
    if (!this.answers[id]) return;
    this.currentQuestionId = id;

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
    this.finalizeQuiz('manual'); // 結果画面に遷移
  }

  // ★時間切れハンドラ
  private onTimeUp() {
    if (this.finished) return;
    this.finalizeQuiz('timeout'); // バリデーションなしで採点→結果へ
  }

  // ★共通の締め処理：採点→保存→結果画面遷移
  private finalizeQuiz(trigger: 'manual' | 'timeout') {
    if (this.finished) return;

    // manual のときだけ未回答チェック
    if (trigger === 'manual' && !this.validateAll()) {
      return;
    }

    // timeout のときは赤枠などのエラー表示をクリア（任意）
    if (trigger === 'timeout') {
      this.errorMap = {};
    }

    // immediate モード時、manual のときだけインラインFBを出す
    if (trigger === 'manual') {
      Object.keys(this.answers).forEach(key => this.showInlineFeedback(+key));
    }

    const totalDurationSec = this.duration * 60;
    const remainingSec = this.remainingSeconds ?? 0;

    this.quizService.finishQuiz(this.questions, this.answers, totalDurationSec, remainingSec);

    this.finished = true;
    this.timerSub?.unsubscribe();
    this.router.navigate(['/result']);
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
  }

  private startTimer() {
    this.timerSub = interval(1000)
      .pipe(takeWhile(() => this.remainingSeconds > 0))
      .subscribe(() => {
        this.remainingSeconds--;
        this.timerDisplay = this.formatTime(this.remainingSeconds);
        if (this.remainingSeconds === 0) {
          this.onTimeUp(); // ★0になった瞬間に自動採点→結果へ
        }
      });
  }

  private formatTime(seconds: number): string {
    const m = Math.floor(seconds / 60);
    const s = (seconds % 60).toString().padStart(2, '0');
    return `${m}:${s}`;
  }

  isHintEnabled(q: Question): boolean {
    return this.mode === 'beginner' || this.mode === 'intermediate';
  }

  // validationの関数
  private validateAll(): boolean{
    const missingIds = this.questions
      .filter(q => !this.answers[q.id] || this.answers[q.id].trim() === '')
      .map(q => q.id);

    // マップを更新（未回答だけ true）
    this.errorMap = {};
    missingIds.forEach(id => {
      this.errorMap[id] = true;
    });

    // 先頭の未回答にスクロールしたい場合はここで
    // const first = missingIds[0];
    // if (first) document.getElementById(`q-${first}`)?.scrollIntoView({ behavior: 'smooth', block: 'center' });

    return missingIds.length === 0;
  }

  // ===== 連番マップ & ヘルパー =====
  private buildIdOrderMap() {
    this.idOrder = Object.fromEntries(
      this.questions.map((q, idx) => [q.id, idx + 1])
    );
  }

  getOrderById = (id: number | null): number => {
    if (id == null) return 0;
    return this.idOrder[id] ?? (this.questions.findIndex(q => q.id === id) + 1);
  }

  getQuestionById(id: number | null) {
    if (id == null) return undefined as any;
    return this.questions.find(q => q.id === id);
  }

  // 一括採点後のレビュー制御は不要
}
