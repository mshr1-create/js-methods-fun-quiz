import { importProvidersFrom } from '@angular/core';
import { bootstrapApplication } from '@angular/platform-browser';
import { provideRouter } from '@angular/router';
import { AppRootComponent } from './app/app-root.component';
import { provideAnimations } from '@angular/platform-browser/animations';
import { routes } from './app/app.routes';

bootstrapApplication(AppRootComponent, {
  providers: [
    provideRouter(routes),
    provideAnimations()
  ]
}).catch((err) => console.error(err));
