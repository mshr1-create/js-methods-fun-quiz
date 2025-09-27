import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule } from '@angular/router';
import { FeedbackPopupComponent, FeedbackData } from '../question-screen/feedback-popup/feedback-popup.component';
import { QuizService } from '../../services/quiz.service';
import { HistoryService } from '../../services/history.service';
import { MatCardModule} from '@angular/material/card';
import { MatButtonModule} from '@angular/material/button';
import { MatIconModule} from '@angular/material/icon';
import { MatDividerModule} from '@angular/material/divider';
import { Router } from '@angular/router';

type DisplayRow = {
  questionId: number;
  text: string;
  code: string;
  userAnswer: string;
  correct: boolean;
  method?: string;
  explanation: string;
  answerTimeSec: number | null;
};

@Component({
  selector: 'app-result',
  standalone: true,
  imports: [
    CommonModule,
    RouterModule,
    FeedbackPopupComponent,
    MatCardModule,
    MatButtonModule,
    MatIconModule,
    MatDividerModule
  ],
  templateUrl: './result.component.html',
  styleUrls: ['./result.component.css']
})
export class ResultComponent implements OnInit {
  constructor(private quizService: QuizService, private history: HistoryService, private router: Router) {}

  summary: any;
  displayRows: DisplayRow[] = [];
  saving = false;
  saved = false;
  ngOnInit() {
    window.scrollTo({ top: 0, behavior: 'smooth' });
    this.summary = this.quizService.getSummary();
    const results = this.quizService.getResults();
    const snaps   = this.quizService.getSnaps();

    if (!results.length) {
      this.router.navigate(['/mode']);
      return;
    }

    for (const r of results) {
      const s = snaps.find(x => x.id === r.questionId);
      if (!s) continue; // 見つからなければスキップ

      this.displayRows.push({
        questionId: r.questionId,
        text: s.text,
        code: s.code,
        userAnswer: r.userAnswer,
        correct: r.correct,
        method: r.method,
        explanation: r.explanation,
        answerTimeSec: r.answerTimeSec,
      });
    }
  }

  async onSave(): Promise<void> {
    if (this.saved || this.saving) return;
    this.saving = true;
    try {
      const summary = this.quizService.getSummary();
      const meta = this.quizService.getSessionMeta();
      if (!summary || !meta) return;
      await this.history.create({
        mode: meta.mode,
        startedAt: meta.startedAt,
        finishedAt: meta.finishedAt,
        durationSec: meta.durationSec,
        score: summary.correctCount, // とりあえず正答数をscoreに
        correctCount: summary.correctCount,
        totalCount: meta.totalCount,
        maxStreak: summary.maxStreak,
      }).toPromise();
      this.saved = true;
    } finally {
      this.saving = false;
    }
  }
}
