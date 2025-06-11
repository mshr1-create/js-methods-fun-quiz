import { Routes } from '@angular/router';
import { HomeComponent } from './home.component';
import { ModeDurationComponent } from './pages/mode-duration/mode-duration.component';
// import { ProfileComponent } from './profile.component';
// import { HistoryComponent } from './history.component';

export const routes: Routes = [
    { path: '', component: HomeComponent },
    { path: 'app-mode-duration', component: ModeDurationComponent },
    // { path: 'profile',    component: ProfileComponent },
    // { path: 'history',    component: HistoryComponent },
];
