using System.Collections.Generic;
using System.Linq;

namespace NepaGiveCamp.Models
{
    public class LookupRepository
    {
        private GiveCampDataContext _datacontext = new GiveCampDataContext();

        public IQueryable<ExperienceLevel> GetAllExperienceLevels()
        {
            return _datacontext.ExperienceLevels;
        }

        public List<string> GetAllShirtSizes()
        {
            return new List<string> { "XS", "S", "M", "L", "XL", "XXL", "3XL", "4XL" }; 
        }

        public IQueryable<JobRole> GetAllJobRoles()
        {
            return _datacontext.JobRoles;
        }

        public JobRole GetJobRole(int Id)
        {
            return _datacontext.JobRoles.SingleOrDefault(j => j.JobRoleID == Id);
        }

        public IQueryable<Technology> GetAllTechnologies()
        {
            return _datacontext.Technologies;
        }

        public Technology GetTechnology(int Id)
        {
            return _datacontext.Technologies.SingleOrDefault(t => t.TechnologyId == Id);
        }

    }
}