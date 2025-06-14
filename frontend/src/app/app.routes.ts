import { Routes } from '@angular/router';
import { HomeComponent } from './home.component';
import { LoginComponent } from './pages/login/login.component';
import { SignupComponent } from './pages/signup/signup.component';
// import { ModeSettingsComponent } from './mode-settings.component';
import { ModeDurationComponent } from './pages/mode-duration/mode-duration.component';
// import { ProfileComponent } from './profile.component';
// import { HistoryComponent } from './history.component';

export const routes: Routes = [
    { path: '', component: HomeComponent },
    { path: 'login', component: LoginComponent },
    { path: 'signup', component: SignupComponent },
    { path: 'app-mode-duration', component: ModeDurationComponent },
    // { path: 'profile',    component: ProfileComponent },
    // { path: 'history',    component: HistoryComponent },
];
