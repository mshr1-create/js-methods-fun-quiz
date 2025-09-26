import { Component, OnInit, inject } from '@angular/core';
import { CommonModule } from '@angular/common';
import { MatCardModule} from '@angular/material/card';
import { MatButtonModule} from '@angular/material/button';
import { MatIconModule} from '@angular/material/icon';
import { MatDividerModule} from '@angular/material/divider';
import { MatTableModule} from '@angular/material/table';
import { HistoryService } from '../../services/history.service';
import { StudySession } from '../../models/study-session.model';

type HistoryRow = { mode: string; duration: string; dateTime: string };

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
  displayedColumns: string[] = ['mode', 'duration', 'dateTime'];
  historyData: HistoryRow[] = [];
  ngOnInit(): void {
    this.history
      .list({ page: 1, pageSize: 10, sort: 'startedAt:desc' })
      .subscribe(({ rows }) => {
        this.historyData = rows.map((r: StudySession) => ({
          mode: r.mode,
          duration: r.durationSec ? `${Math.round((r.durationSec ?? 0) / 60)} mins` : '-',
          dateTime: r.startedAt,
        }));
      });
  }

}
