import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { InductionComponent } from './induction/induction.component';
import { DashboardComponent } from './dashboard/dashboard.component';

const routes: Routes = [
  { path: "", redirectTo: '/dash', pathMatch: 'full' },
  { path: 'induction', component: InductionComponent },
  { path: 'dash', component: DashboardComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
