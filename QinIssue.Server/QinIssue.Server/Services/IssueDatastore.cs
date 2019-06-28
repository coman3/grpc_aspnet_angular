using QinIssue.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace QinIssue.Server.Services
{
    public class IssueRepository
    {
        private List<Issue> Issues = new List<Issue>() {
            new Issue { Id = Guid.NewGuid().ToString(), Title = "This is working...", Resolved = true },
            new Issue { Id = Guid.NewGuid().ToString(), Title = "This is working kinda...", Resolved = true },
            new Issue { Id = Guid.NewGuid().ToString(), Title = "This is working with many items...", Resolved = true },
            new Issue { Id = Guid.NewGuid().ToString(), Title = "This is working and i cant beleive it...", Resolved = true },
            new Issue { Id = Guid.NewGuid().ToString(), Title = "This is working... Holy Shit.", Resolved = true },
        };


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
