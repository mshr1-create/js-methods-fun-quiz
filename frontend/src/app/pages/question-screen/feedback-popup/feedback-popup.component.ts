import { Component, Input, Output, EventEmitter } from '@angular/core';
import { CommonModule } from '@angular/common';
import { Question } from '../../../models/question.model';

export interface FeedbackData {
  correct: boolean;
  method?: string;
  explanation: string;
}

@Component({
  selector: 'app-feedback-popup',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './feedback-popup.component.html',
  styleUrls: ['./feedback-popup.component.css']
})
export class FeedbackPopupComponent {
  @Input() question!: Pick<Question, 'id' | 'text'> & { code?: string };
  @Input() totalQuestions!: number;
  // ★ 追加：出題順（1-based）
  @Input() order: number = 1;
  @Input() data!: FeedbackData;
  @Input() variant: 'overlay' | 'static' = 'overlay';
  @Input() showNext: boolean = true;
  @Output() close = new EventEmitter<void>();


  onNext(): void {
    this.close.emit();
  }
}
