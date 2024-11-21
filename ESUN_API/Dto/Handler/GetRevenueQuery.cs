using ESUN_API.Dto.Rs;
using MediatR;

namespace ESUN_API.Dto.Handler
{
    /// <summary>
    /// 取得收入清單
    /// </summary>
    public class GetRevenueQuery : IRequest<DataRs>
    {
        public GetRevenueQuery()
        {
        }
    }
}