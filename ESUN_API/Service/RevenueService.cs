using ESUN_API.Dto.Rq;
using ESUN_API.Dto.Rs;
using ESUN_API.Models;
using Microsoft.EntityFrameworkCore;

namespace ESUN_API.Service
{
    /// <summary>
    /// 收入邏輯
    /// </summary>
    public class RevenueService : BaseService
    {
        private readonly ESUNContextExtend _context;
        private readonly ILogger<RevenueService> _logger;

        public RevenueService(ILogger<RevenueService> logger, ESUNContextExtend context)
        {
            _logger = logger;
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

                return ReturnDataRs(StatusCodes.Status200OK, "成功！", result, "成功！");
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
                var sql = @"EXEC spInsertData
@CompanyCode = {0}
, @CompanyName = {1}
, @IndustryName = {2}
, @PublishDate = {3}
, @Year_Date = {4}
, @Revenue_CurrentMonth = {5}
, @Revenue_PreviousMonth = {6}
, @Revenue_SameMonthLastYear = {7}
, @Revenue_MonthOverMonthGrowthPct = {8}
, @Revenue_YearOverYearGrowthPct = {9}
, @CumulativeRevenue_CurrentMonth = {10}
, @CumulativeRevenue_LastYear = {11}
, @CumulativeRevenue_PeriodOverPeriodGrowthPct = {12}
, @Memo = {13}
";

            var result = await _context.Database.ExecuteSqlRawAsync(sql,
                rq.CompanyCode
                , rq.CompanyName
                , rq.IndustryName
                , rq.PublishDate
                , rq.Year_Date
                , rq.Revenue_CurrentMonth
                , rq.Revenue_PreviousMonth
                , rq.Revenue_SameMonthLastYear
                , rq.Revenue_MonthOverMonthGrowthPct
                , rq.Revenue_YearOverYearGrowthPct
                , rq.CumulativeRevenue_CurrentMonth
                , rq.CumulativeRevenue_LastYear
                , rq.CumulativeRevenue_PeriodOverPeriodGrowthPct
                , rq.Memo
                );

                if (result > 0)
                {
                    return ReturnDataRs(StatusCodes.Status204NoContent, "儲存成功！", "", "儲存成功！");
                }

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