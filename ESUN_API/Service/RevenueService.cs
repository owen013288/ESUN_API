using AutoMapper;
using ESUN_API.Dto.Rq;
using ESUN_API.Dto.Rs;
using ESUN_API.Models;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;

namespace ESUN_API.Service
{
    /// <summary>
    /// 收入邏輯
    /// </summary>
    public class RevenueService : BaseService
    {
        private readonly ILogger<RevenueService> _logger;
        private readonly IMapper _mapper;
        private readonly ESUNContextExtend _context;

        public RevenueService(ILogger<RevenueService> logger, IMapper mapper, ESUNContextExtend context)
        {
            _logger = logger;
            _mapper = mapper;
            _context = context;
        }

        /// <summary>
        /// 取得收入清單
        /// </summary>
        /// <returns></returns>
        public async Task<DataRs> Get()
        {
            try
            {
                var sql = @"EXEC spGetData";

                var result = await _context.RevenueData.FromSqlRaw(sql).ToListAsync();

                var autoMapperResult = result.Select(x => _mapper.Map<RevenueRs>(x)).ToList();

                return ReturnDataRs(StatusCodes.Status200OK, "成功！", autoMapperResult, "成功！");
            }
            catch (Exception ex)
            {
                // 處理異常並返回適當的HTTP響應
                return ReturnDataRs(StatusCodes.Status500InternalServerError, "伺服器內部錯誤！", "", ex.Message);
            }
        }

        /// <summary>
        /// 新增收入資料
        /// </summary>
        /// <param name="rq">收入Rq</param>
        /// <returns></returns>
        public async Task<DataRs> Post(RevenueRq rq)
        {
            try
            {
                var sql = @"
EXEC spInsertData
    @CompanyCode = @CompanyCode
    , @CompanyName = @CompanyName
    , @IndustryName = @IndustryName
    , @PublishDate = @PublishDate
    , @Year_Date = @Year_Date
    , @Revenue_CurrentMonth = @Revenue_CurrentMonth
    , @Revenue_PreviousMonth = @Revenue_PreviousMonth
    , @Revenue_SameMonthLastYear = @Revenue_SameMonthLastYear
    , @Revenue_MonthOverMonthGrowthPct = @Revenue_MonthOverMonthGrowthPct
    , @Revenue_YearOverYearGrowthPct = @Revenue_YearOverYearGrowthPct
    , @CumulativeRevenue_CurrentMonth = @CumulativeRevenue_CurrentMonth
    , @CumulativeRevenue_LastYear = @CumulativeRevenue_LastYear
    , @CumulativeRevenue_PeriodOverPeriodGrowthPct = @CumulativeRevenue_PeriodOverPeriodGrowthPct
    , @Memo = @Memo
";

                var parameters = new List<SqlParameter>
                {
                    new SqlParameter("@CompanyCode", rq.CompanyCode),
                    new SqlParameter("@CompanyName", rq.CompanyName),
                    new SqlParameter("@IndustryName", rq.IndustryName),
                    new SqlParameter("@PublishDate", rq.PublishDate),
                    new SqlParameter("@Year_Date", rq.Year_Date),
                    new SqlParameter("@Revenue_CurrentMonth", rq.Revenue_CurrentMonth),
                    new SqlParameter("@Revenue_PreviousMonth", rq.Revenue_PreviousMonth),
                    new SqlParameter("@Revenue_SameMonthLastYear", rq.Revenue_SameMonthLastYear),
                    new SqlParameter("@Revenue_MonthOverMonthGrowthPct", rq.Revenue_MonthOverMonthGrowthPct),
                    new SqlParameter("@Revenue_YearOverYearGrowthPct", rq.Revenue_YearOverYearGrowthPct),
                    new SqlParameter("@CumulativeRevenue_CurrentMonth", rq.CumulativeRevenue_CurrentMonth),
                    new SqlParameter("@CumulativeRevenue_LastYear", rq.CumulativeRevenue_LastYear),
                    new SqlParameter("@CumulativeRevenue_PeriodOverPeriodGrowthPct", rq.CumulativeRevenue_PeriodOverPeriodGrowthPct),
                    new SqlParameter("@Memo", rq.Memo)
                };


                var result = await _context.Database.ExecuteSqlRawAsync(sql, parameters.ToArray());

                if (result > 0)
                    return ReturnDataRs(StatusCodes.Status204NoContent, "儲存成功！", "", "儲存成功！");

                return ReturnDataRs(StatusCodes.Status500InternalServerError, "儲存失敗！", "", "儲存失敗！");
            }
            catch (Exception ex)
            {
                // 處理異常並返回適當的HTTP響應
                return ReturnDataRs(StatusCodes.Status500InternalServerError, "伺服器內部錯誤！", "", ex.Message);
            }
        }
    }
}