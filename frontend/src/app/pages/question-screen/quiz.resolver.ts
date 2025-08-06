import { ResolveFn } from '@angular/router';
import { QuizService } from '../../services/quiz.service';
import { inject } from '@angular/core';
import { Question } from '../../models/question.model';

export const quizResolver: ResolveFn<Question[]> = (route) => {
  const quizService = inject(QuizService);
  // クエリパラメータから mode と duration を取得
  type Mode = 'beginner' | 'intermediate' | 'advanced';
  type Duration = 10 | 15 | 30; // 分単位の制限時間
  const mode = route.queryParamMap.get('mode') as Mode;
  const dur = +route.queryParamMap.get('duration')! as Duration;
  return quizService.getQuestion(mode, dur);

};
