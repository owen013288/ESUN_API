using AutoMapper;
using ESUN_API.Dto.Rs;
using ESUN_API.Models;
using ESUN_API.Service;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace ESUN_API.Handler
{
    // 實現處理請求的邏輯
    public class GetRevenueQueryHandler : BaseService, IRequestHandler<GetRevenueQuery, DataRs>
    {
        private readonly ILogger<GetRevenueQueryHandler> _logger;
        private readonly IMapper _mapper;
        private readonly ESUNContextExtend _context;

        public GetRevenueQueryHandler(ILogger<GetRevenueQueryHandler> logger, IMapper mapper, ESUNContextExtend context)
        {
            _logger = logger;
            _mapper = mapper;
            _context = context;
        }

        public Task<DataRs> Handle(GetRevenueQuery request, CancellationToken cancellationToken)
        {
            try
            {
                var sql = $"EXEC spGetData {request._page}, {request._pageSize}";

                var result = _context.RevenueData.FromSqlRaw(sql).ToList();

                var autoMapperResult = result.Select(x => _mapper.Map<RevenueRs>(x)).ToList();

                return ReturnDataRsAsync(StatusCodes.Status200OK, "成功！", autoMapperResult, "成功！");
            }
            catch (Exception ex)
            {
                // 處理異常並返回適當的HTTP響應
                return ReturnDataRsAsync(StatusCodes.Status500InternalServerError, "伺服器內部錯誤！", "", ex.Message);
            }
        }
    }
}