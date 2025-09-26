import { ApplicationConfig, provideZoneChangeDetection } from '@angular/core';
import { provideRouter } from '@angular/router';
import { provideHttpClient, withInterceptors } from '@angular/common/http';
import { routes } from './app.routes';
import { bootstrapApplication } from '@angular/platform-browser';
import { HomeComponent } from './home.component';
import { authInterceptor } from './http/auth.interceptor';

export const appConfig: ApplicationConfig = {
  providers: [
    provideZoneChangeDetection({ eventCoalescing: true }), 
    provideRouter(routes),
    provideHttpClient(),
    provideHttpClient(withInterceptors([authInterceptor]))
  ]
};

// bootstrapApplication(HomeComponent, {
//   providers: [provideHttpClient(withInterceptors([authInterceptor]))]
// });
