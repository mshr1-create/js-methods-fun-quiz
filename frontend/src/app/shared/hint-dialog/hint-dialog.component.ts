import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { Question } from '../../models/question.model';
import { Input, Output, EventEmitter} from '@angular/core';

@Component({
  selector: 'app-hint-dialog',
  imports: [ 
    CommonModule, ],
  standalone: true,
  templateUrl: './hint-dialog.component.html',
  styleUrls: ['./hint-dialog.component.css']
})
export class HintDialogComponent {
  @Input() q?: Question;
  @Input() totalQuestions: number = 0;
  @Output() close = new EventEmitter<void>();
  open = false;

  onClose(): void {
    this.close.emit();
  }

}
