import { ResolveFn } from '@angular/router';
import { QuizService } from '../../services/quiz.service';
import { inject } from '@angular/core';
import { Question } from '../../models/question.model';

export const quizResolver: ResolveFn<Question[]> = (route) => {
  const quizService = inject(QuizService);
  // クエリパラメータから mode と duration を取得
  type Mode = 'beginner' | 'intermediate' | 'advanced';
  const mode = route.queryParamMap.get('mode') as Mode;
  return quizService.getQuestion(mode);// 
};
