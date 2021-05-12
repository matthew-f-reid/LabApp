import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-induction',
  templateUrl: './induction.component.html',
  styleUrls: ['./induction.component.css']
})
export class InductionComponent implements OnInit {

  depts = ["efri", "ari", "aerc", "nsc"];

  constructor() { }

  ngOnInit(): void {
  }

}
