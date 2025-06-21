// src/app/shared/text-answer/text-answer.component.ts
import { Component, Output, EventEmitter } from '@angular/core';

@Component({
    selector: 'app-text-answer',
    templateUrl: './text-answer.component.html',
})
export class TextAnswerComponent {
    @Output() answer = new EventEmitter<string>();

    onInput(e: Event) {
        const v = (e.target as HTMLInputElement).value;
        this.answer.emit(v);
    }
}
