using System.Collections.Generic;
using System.Linq;

namespace NepaGiveCamp.Models
{
    public class VolunteerRepository
    {
        private GiveCampDataContext _datacontext = new GiveCampDataContext();

        public IQueryable<Volunteer> GetAllVolunteers()
        {
            return _datacontext.Volunteers;
        }

        public void Register(Volunteer volunteer)
        {
            Register(volunteer, new List<JobRole>(), new List<Technology>());
        }

        public void Register(Volunteer volunteer, IList<JobRole> jobRoles, IList<Technology> technologies)
        {
            foreach (var jobRole in jobRoles)
            {
                var volunteerJobRole = new VolunteerJobRole
                                           {
                                               Volunteer = volunteer,
                                               JobRoleId = jobRole.JobRoleID,
                                               VolunteerId = volunteer.VolunteerId
                                           }; 
                _datacontext.VolunteerJobRoles.InsertOnSubmit(volunteerJobRole);
            }

            foreach (var technology in technologies)
            {
                var volunteerTechnology = new VolunteerTechnology()
                                            {
                                                Volunteer = volunteer,
                                                TechnologyId = technology.TechnologyId,
                                                VolunteerId = volunteer.VolunteerId
                                            };
                _datacontext.VolunteerTechnologies.InsertOnSubmit(volunteerTechnology);
            }

            _datacontext.Volunteers.InsertOnSubmit(volunteer);
        }

        public void Save()
        {
            _datacontext.SubmitChanges();
        }

    }
}