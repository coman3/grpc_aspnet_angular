using QinIssue.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace QinIssue.Server.Services
{
    public class IssueRepository
    {
        private List<Issue> Issues = new List<Issue>();


        public List<Issue> GetIssues()
        {
            return Issues;
        }

        public void AddIssue(Issue issue)
        {
            Issues.Add(issue);
        }
    }
}
