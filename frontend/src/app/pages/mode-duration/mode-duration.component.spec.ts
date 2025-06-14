import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ModeDurationComponent } from './mode-duration.component';

describe('ModeDurationComponent', () => {
  let component: ModeDurationComponent;
  let fixture: ComponentFixture<ModeDurationComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [ModeDurationComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ModeDurationComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
