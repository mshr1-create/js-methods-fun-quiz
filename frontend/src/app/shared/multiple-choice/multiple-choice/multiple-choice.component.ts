import { Component, Input, Output, EventEmitter } from '@angular/core';
import { NgFor } from '@angular/common';
import { Question } from '../../../models/question.model';
import { CommonModule } from '@angular/common';

@Component({
    selector: 'app-multiple-choice',
    standalone: true,
    templateUrl: './multiple-choice.component.html',
    styleUrls: ['./multiple-choice.component.css'],
    imports: [NgFor,
            CommonModule,
    ],    
})
export class MultipleChoiceComponent {
    @Input() question?: Question;
    @Input() disabled: boolean = false;
    @Input() selected: string = ''; 
    @Output() answer = new EventEmitter<string>();

    emitAnswer(id: number, answer: string) {
        if (this.disabled) return; // 回答が無効な場合は何もしない
        this.answer.emit(answer); // 親コンポーネントに回答を通知
    }
}
