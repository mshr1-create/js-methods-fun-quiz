import { Component, OnInit, inject } from '@angular/core';
import { CommonModule } from '@angular/common';
import { MatCardModule} from '@angular/material/card';
import { MatButtonModule} from '@angular/material/button';
import { MatIconModule} from '@angular/material/icon';
import { MatDividerModule} from '@angular/material/divider';
import { MatTableModule} from '@angular/material/table';
import { HistoryService } from '../../services/history.service';
import { StudySession } from '../../models/study-session.model';

type HistoryRow = { mode: string; duration: string; dateTime: string; score: string };

@Component({
  selector: 'history',
  imports: [ CommonModule, 
            MatCardModule, 
            MatButtonModule, 
            MatIconModule,
            MatDividerModule,
            MatTableModule],
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
  ngOnInit(): void {
    this.history
      .list({ page: 1, pageSize: 10, sort: 'startedAt:desc' })
      .subscribe(({ rows }) => {
        this.historyData = rows.map((r: StudySession) => ({
          mode: r.mode,
          duration: (r.durationSec ?? 0) > 0 ? `${Math.round((r.durationSec ?? 0) / 60)} mins` : '-',
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
          sumDuration += r.durationSec ?? 0;
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
