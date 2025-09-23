import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { MatCardModule} from '@angular/material/card';
import { MatButtonModule} from '@angular/material/button';
import { MatIconModule} from '@angular/material/icon';
import { MatDividerModule} from '@angular/material/divider';
import { MatTableModule} from '@angular/material/table';

type HistoryRow = { mode: string; duration: string; dateTime: string };

@Component({
  selector: 'app-progress-history',
  imports: [ CommonModule, 
            MatCardModule, 
            MatButtonModule, 
            MatIconModule,
            MatDividerModule,
            MatTableModule],
  templateUrl: './progress-history.component.html',
  styleUrls: ['./progress-history.component.css']
})
export class ProgressHistoryComponent {
  displayedColumns: string[] = ['mode', 'duration', 'dateTime'];
  historyData: HistoryRow[] = [
    { mode: '初級', duration: '10 mins', dateTime: '2024-10-01 10:00 AM' },
    { mode: '中級', duration: '15 mins', dateTime: '2024-10-01 10:25 AM' },
    { mode: '上級', duration: '30 mins', dateTime: '2024-10-01 10:30 AM' },
    { mode: '初級', duration: '15 mins', dateTime: '2024-10-01 10:55 AM' },
  ];

}
