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

export const routes: Routes = [
    // { path: '', component: HomeComponent },
    { path: 'login', component: LoginComponent },
    { path: 'signup', component: SignupComponent },
    { path: 'app-mode-duration', component: ModeDurationComponent },
    { path: '', component: HomeComponent },
    // { path: 'profile',    component: ProfileComponent },
    // { path: 'history',    component: HistoryComponent },
    { 
        path: 'questions', 
        component: QuestionScreenComponent,
        resolve: {
            quiz: quizResolver // quizResolverを使用してクイズデータを取得
        }
    },
    { path: '', redirectTo: 'app-home', pathMatch: 'full' }
];
