using System.Collections.Generic;
using System.Linq;

namespace NepaGiveCamp.Models
{
    public class CharityRepository
    {
        private GiveCampDataContext _datacontext = new GiveCampDataContext();

        public IQueryable<CharityRequirement> GetAllCharities()
        {
            return _datacontext.CharityRequirements;
        }

        public void Register(CharityRequirement charity)
        {
            Register(charity, new List<Technology>(), new List<Technology>());
        }

        public void Register(CharityRequirement charity, IList<Technology> infrastructure, IList<Technology> support)
        {
            foreach (var inf in infrastructure)
            {
                var charityInfrastructure = new CharityRequirementTechnologiesUsed
                {
                    CharityRequirement = charity,
                    CharityRequirementId = charity.CharityRequirementId,
                    TechnologyId = inf.TechnologyId
                };
                _datacontext.CharityRequirementTechnologiesUseds.InsertOnSubmit(charityInfrastructure);
            }

            foreach (var supp in support)
            {
                var charitySupport = new CharityRequirementSupportSkill
                {
                    CharityRequirement = charity,
                    TechnologyId = supp.TechnologyId,
                    CharityRequirementId = charity.CharityRequirementId
                };
                _datacontext.CharityRequirementSupportSkills.InsertOnSubmit(charitySupport);
            }

            _datacontext.CharityRequirements.InsertOnSubmit(charity);
        }

        public void Save()
        {
            _datacontext.SubmitChanges();
        }
    }
}