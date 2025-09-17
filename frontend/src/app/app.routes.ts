import { Routes } from '@angular/router';
import { HomeComponent } from './home.component';
import { LoginComponent } from './pages/login/login.component';
import { SignupComponent } from './pages/signup/signup.component';
// import { ModeSettingsComponent } from './mode-settings.component';
import { ModeDurationComponent } from './pages/mode-duration/mode-duration.component';
import { QuestionScreenComponent } from './pages/question-screen/question-screen.component';
// import { ProfileComponent } from './profile.component';
// import { HistoryComponent } from './history.component';
import { HttpClient } from '@angular/common/http';
import { quizResolver } from './pages/question-screen/quiz.resolver';
import { ResultComponent } from './pages/result/result.component';
import { authGuard } from './guards/auth.guard';

export const routes: Routes = [
    // { path: '', component: HomeComponent },
    { path: 'login', component: LoginComponent },
    { path: 'app-signup', component: SignupComponent },
    { path: 'app-mode-duration', component: ModeDurationComponent },
    { path: 'app-home', component: HomeComponent },
    // { path: 'profile',    component: ProfileComponent },
    // { path: 'history',    component: HistoryComponent },
    { 
        path: 'questions', 
        canActivate: [authGuard],
        resolve: { quiz: quizResolver },// quizResolverを使用してクイズデータを取得        
        loadComponent: () => 
            import('./pages/question-screen/question-screen.component')
                .then(m => m.QuestionScreenComponent)
    },
    {
        path: 'result',
        canActivate: [authGuard],
        loadComponent: () =>
          import('./pages/result/result.component').then(m => m.ResultComponent)
    },
    { path: '', redirectTo: 'login', pathMatch: 'full' }
];
