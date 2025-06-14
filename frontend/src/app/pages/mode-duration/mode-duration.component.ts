import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { RouterModule } from '@angular/router';
import { CommonModule } from '@angular/common';
import { MatButtonToggleModule } from '@angular/material/button-toggle';

@Component({
  selector: 'app-mode-duration',
  standalone: true,
  imports: [
    CommonModule,
    FormsModule,
    RouterModule,
    MatButtonToggleModule
  ],
  templateUrl: './mode-duration.component.html',
  styleUrl: './mode-duration.component.css'
})
export class ModeDurationComponent {

}
