import { Component, Input, Output, EventEmitter } from '@angular/core';
import { NgFor } from '@angular/common';
import { QuizService } from '../../../services/quiz.service';

@Component({
    selector: 'app-multiple-choice',
    templateUrl: './multiple-choice.component.html',
    styleUrls: ['./multiple-choice.component.css'],
    imports: [NgFor],    
})
export class MultipleChoiceComponent {
    @Input() choices: string[] = [];
    @Input() questionId!: number;
    @Output() answer = new EventEmitter<string>();

    onChange(choice: string) {
        this.answer.emit(choice);
        console.log('Selected choice:', choice);

    }
}
