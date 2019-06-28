import { Component, OnInit } from '@angular/core';
import { IssuesService } from '../issues.service';
import { Observable, from } from 'rxjs';
import { Issue } from '../models/models_pb';

@Component({
  selector: 'app-issue',
  templateUrl: './issue.component.html',
  styleUrls: ['./issue.component.css']
})
export class IssueComponent implements OnInit {

  issues: Observable<Issue.AsObject[]>;


  constructor(private issueService: IssuesService) { }

  ngOnInit() {
    this.issues = from(this.issueService.getIssues(""));
  }

}
