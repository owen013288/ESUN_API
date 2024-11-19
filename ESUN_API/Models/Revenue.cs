using System;
using System.Collections.Generic;

namespace ESUN_API.Models
{
    public partial class Revenue
    {
        /// <summary>
        /// PK
        /// </summary>
        public Guid Id { get; set; }
        /// <summary>
        /// 資料年月
        /// </summary>
        public string Year_Date { get; set; } = null!;
        /// <summary>
        /// 公司代號
        /// </summary>
        public string CompanyCode { get; set; } = null!;
        /// <summary>
        /// 營業收入-當月營收
        /// </summary>
        public long? Revenue_CurrentMonth { get; set; }
        /// <summary>
        /// 營業收入-上月營收
        /// </summary>
        public long? Revenue_PreviousMonth { get; set; }
        /// <summary>
        /// 營業收入-去年當月營收
        /// </summary>
        public long? Revenue_SameMonthLastYear { get; set; }
        /// <summary>
        /// 營業收入-上月比較增減(%)
        /// </summary>
        public double? Revenue_MonthOverMonthGrowthPct { get; set; }
        /// <summary>
        /// 營業收入-去年同月增減(%)
        /// </summary>
        public double? Revenue_YearOverYearGrowthPct { get; set; }
        /// <summary>
        /// 累計營業收入-當月累計營收
        /// </summary>
        public long? CumulativeRevenue_CurrentMonth2 { get; set; }
        /// <summary>
        /// 累計營業收入-去年累計營收
        /// </summary>
        public long? CumulativeRevenue_LastYear { get; set; }
        /// <summary>
        /// 累計營業收入-前期比較增減(%)
        /// </summary>
        public double? CumulativeRevenue_PeriodOverPeriodGrowthPct { get; set; }
        /// <summary>
        /// 備註
        /// </summary>
        public string? Memo { get; set; }
        /// <summary>
        /// 建立者
        /// </summary>
        public string Createtor { get; set; } = null!;
        /// <summary>
        /// 建立時間
        /// </summary>
        public DateTime CreateTime { get; set; }
        /// <summary>
        /// 修改時間
        /// </summary>
        public DateTime? ModifyTime { get; set; }

        public virtual Company CompanyCodeNavigation { get; set; } = null!;
    }
}
