import { Component, OnInit, inject } from '@angular/core';
import { CommonModule } from '@angular/common';
import { MatCardModule} from '@angular/material/card';
import { MatButtonModule} from '@angular/material/button';
import { MatIconModule} from '@angular/material/icon';
import { MatDividerModule} from '@angular/material/divider';
import { MatTableModule} from '@angular/material/table';
import { HistoryService } from '../../services/history.service';
import { StudySession } from '../../models/study-session.model';
import { RouterModule } from '@angular/router';

type HistoryRow = { mode: string; duration: string; dateTime: string; score: string };

@Component({
  selector: 'history',
  imports: [ CommonModule, 
            MatCardModule, 
            MatButtonModule, 
            MatIconModule,
            MatDividerModule,
            MatTableModule,
            RouterModule],
  templateUrl: './progress-history.component.html',
  styleUrls: ['./progress-history.component.css']
})
export class ProgressHistoryComponent implements OnInit {
  private history = inject(HistoryService);
  displayedColumns: string[] = ['mode', 'duration', 'dateTime', 'score'];
  historyData: HistoryRow[] = [];
  // 集計
  totalAnswered = 0;
  totalDays = 0;
  accuracyPct: number | null = null;
  avgSecPerAnswer: number | null = null;
  totalScore = 0;
  private toModeLabel(mode: string): string {
    switch (mode) {
      case 'beginner': return '初級';
      case 'intermediate': return '中級';
      case 'advanced': return '上級';
      default: return mode;
    }
  }
  ngOnInit(): void {
    this.history
      .list({ page: 1, pageSize: 10, sort: 'startedAt:desc' })
      .subscribe(({ rows }) => {
        this.historyData = rows.map((r: StudySession) => ({
          mode: this.toModeLabel(r.mode),
          duration: (r.durationSec ?? 0) > 0 ? `${Math.round((r.durationSec ?? 0) / 60)} 分` : '-',
          dateTime: r.startedAt,
          score: r.score != null ? String(r.score) : '-',
        }));

        // 上部カード集計
        const dateSet = new Set<string>();
        let answered = 0, correct = 0, sumDuration = 0, sumScore = 0;
        for (const r of rows) {
          if (r.startedAt) {
            const d = new Date(r.startedAt);
            dateSet.add(d.toDateString());
          }
          answered += r.totalCount ?? 0;
          correct  += r.correctCount ?? 0;
          // 実際の経過秒（finishedAt - startedAt）で平均解答時間を算出
          const startMs = r.startedAt ? new Date(r.startedAt).getTime() : null;
          const finishMs = r.finishedAt ? new Date(r.finishedAt).getTime() : null;
          const elapsed = (startMs != null && finishMs != null && finishMs > startMs)
            ? Math.floor((finishMs - startMs) / 1000)
            : 0;
          sumDuration += elapsed;
          sumScore += r.score ?? 0;
        }
        this.totalAnswered = answered;
        this.totalDays = dateSet.size;
        this.accuracyPct = answered ? Math.round((correct / answered) * 100) : null;
        this.avgSecPerAnswer = answered ? Math.round(sumDuration / answered) : null;
        this.totalScore = sumScore;
      });
  }

}
