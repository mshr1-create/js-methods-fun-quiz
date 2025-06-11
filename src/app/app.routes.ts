import { Routes } from '@angular/router';
import { HomeComponent } from './home.component';
import { LoginComponent } from './pages/login/login.component';
import { SignupComponent } from './pages/signup/signup.component';
// import { ModeSettingsComponent } from './mode-settings.component';
// import { ProfileComponent } from './profile.component';
// import { HistoryComponent } from './history.component';

export const routes: Routes = [
    { path: '', component: HomeComponent },
    { path: 'login', component: LoginComponent },
    { path: 'signup', component: SignupComponent },
    // { path: 'mode',       component: ModeSettingsComponent },
    // { path: 'profile',    component: ProfileComponent },
    // { path: 'history',    component: HistoryComponent },
];
