using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Grpc.Core;
using QinIssue.Models;
using QinIssue.Server.Services;

namespace QinIssue.Server.Services.Grpc
{
    public class IssueServiceImpl : IssueService.IssueServiceBase
    {

        private IssueRepository repo;

        public IssueServiceImpl(IssueRepository repo)
        {
            this.repo = repo;
        }
        public override Task<BoolStatus> CreateIssue(NewIssue request, ServerCallContext context)
        {
            try
            {
                var issue = new Issue();
                issue.Id = Guid.NewGuid().ToString();
                issue.Title = request.Title;
                repo.AddIssue(issue);
                return Task.FromResult(new BoolStatus { Completed = true });
            }
            catch (Exception)
            {
                return Task.FromResult(new BoolStatus { Completed = false });
            }
        }

        public override Task<IssueList> GetIssues(GetIssue request, ServerCallContext context)
        {
            var issues = repo.GetIssues().Where(x => request.TitleContains.Length <= 0 || x.Title.ToLower().Contains(request.TitleContains.ToLower()));
            var issuesList = new IssueList();
            issuesList.Issues.Add(issues);
            return Task.FromResult(issuesList);
        }
    }
}
