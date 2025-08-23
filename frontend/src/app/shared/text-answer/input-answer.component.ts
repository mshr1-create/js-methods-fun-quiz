// src/app/shared/text-answer/text-answer.component.ts
import { Component, Output, EventEmitter, Input } from '@angular/core';

@Component({
    selector: 'app-text-answer',
    standalone: true,
    templateUrl: './input-answer.component.html',
    styleUrls: ['./input-answer.component.css']
})
export class InputAnswerComponent {
    @Input() value: string = '';
    @Output() answer = new EventEmitter<string>();

    onInput(e: Event) {
        const v = (e.target as HTMLInputElement).value;
        this.answer.emit(v);
    }
}
