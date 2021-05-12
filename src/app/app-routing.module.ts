import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { InductionComponent } from './induction/induction.component';

const routes: Routes = [
  { path: 'induction', component: InductionComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
