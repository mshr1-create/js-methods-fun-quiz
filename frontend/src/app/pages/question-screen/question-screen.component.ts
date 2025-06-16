import { Component, OnInit } from '@angular/core';
import { Question } from '../../models/question.model';
import { ActivatedRoute } from '@angular/router';
import { QuizService } from '../../services/quiz.service';
import { NgFor, NgIf } from '@angular/common';
import { CommonModule } from '@angular/common';
import { RouterModule } from '@angular/router';
import { MultipleChoiceComponent } from '../../shered/multiple-choice/multiple-choice/multiple-choice.component';
import { TextAnswerComponent } from '../../shered/text-answer/text-answer.component';


@Component({
  selector: 'app-question-screen',
  standalone: true,
  imports: [
    NgFor,
    NgIf,
    CommonModule,
    RouterModule,
    MultipleChoiceComponent,
    TextAnswerComponent
  ],
  templateUrl: './question-screen.component.html',
  styleUrls: ['./question-screen.component.css']
})


export class QuestionScreenComponent implements OnInit {
  level!: 'beginner' | 'intermediate' | 'advanced';
  questions: Question[] = [];
  answers: Record<number, string> = {};
  feedbackMode: 'immediate' | 'deferred' = 'deferred';

  constructor(
    private route: ActivatedRoute,
    private quizService: QuizService
  ) { }

  ngOnInit() {
    this.level = this.route.snapshot.paramMap.get('level') as any;
    this.questions = this.quizService.getQuestions(this.level);
    this.feedbackMode = this.level === 'beginner' ? 'immediate' : 'deferred';
  }

  onAnswer(id: number, answer: string) {
    this.answers[id] = answer;
    if (this.feedbackMode === 'immediate') {
      this.showFeedback(id);
    }
  }

  submitAll() {
    Object.keys(this.answers).forEach(id => this.showFeedback(+id));
  }

  private showFeedback(id: number) {
    const ok = this.quizService.isCorrect(id, this.answers[id]);
    alert(`Q${id}: ${ok ? '☑️正解' : '×不正解'}`);
  }
}
