using ESUN_API.Dto.Rs;
using MediatR;

namespace ESUN_API.Handler
{
    /// <summary>
    /// 取得收入清單
    /// </summary>
    public class GetRevenueQuery : IRequest<DataRs>
    {
        public int _page { get; set; }
        public int _pageSize { get; set; }
        public GetRevenueQuery(int page, int pageSize)
        {
            _page = page;
            _pageSize = pageSize;
        }
    }
}