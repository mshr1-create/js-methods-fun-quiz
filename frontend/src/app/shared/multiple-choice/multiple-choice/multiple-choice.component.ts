// src/app/shared/multiple-choice/multiple-choice.component.ts
import { Component, Input, Output, EventEmitter } from '@angular/core';
import { NgFor } from '@angular/common';

@Component({
    selector: 'app-multiple-choice',
    templateUrl: './multiple-choice.component.html',
    styleUrls: ['./multiple-choice.component.css'],
    imports: [NgFor],    
})
export class MultipleChoiceComponent {
    @Input() options: string[] = [];
    @Input() questionId!: number;
    @Output() answer = new EventEmitter<string>();

    onChange(option: string) {
    this.answer.emit(option);
    }
}
