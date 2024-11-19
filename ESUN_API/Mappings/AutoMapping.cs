using ESUN_API.Dto;
using ESUN_API.Dto.Rs;
using Profile = AutoMapper.Profile;

namespace ESUN_API.Mappings
{
    public class AutoMapping : Profile
    {
        public AutoMapping()
        {
            #region RevenueData -> RevenueRs
            CreateMap<RevenueData, RevenueRs>();
            #endregion
        }
    }
}