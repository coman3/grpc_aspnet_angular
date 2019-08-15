import { Injectable } from '@angular/core';
import { IssueServiceClient } from './models/models_pb_service';
import { Issue, GetIssue, IssueList, NewIssue, BoolStatus } from './models/models_pb';

@Injectable({
  providedIn: 'root'
})
export class IssuesService {

  client: IssueServiceClient;

  constructor() {
    this.client = new IssueServiceClient('http://149.28.160.245:8080');
  }

  getIssues(titleFilter: string): Promise<Issue.AsObject[]> {
    return new Promise((resolve, reject) => {
      console.log('IssueService.getIssues', titleFilter);
      const req = new GetIssue();
      req.setTitlecontains(titleFilter);
      this.client.getIssues(req, null, (err, response: IssueList) => {
        console.log('IssueService.getIssues.response', response.toObject());
        if (err) {
          return reject(err);
        }
        resolve(response.toObject().issuesList);
      });
    });
  }

  createIssue(title: string): Promise<boolean> {
    return new Promise((resolve, reject) => {
      const req = new NewIssue();
      req.setTitle(title);
      this.client.createIssue(req, (err, response: BoolStatus) => {
        console.log('IssueService.getIssues.response', response.toObject());
        if (err) {
          return reject(err);
        }
        resolve(response.toObject().completed);
      });
    });
  }

}
