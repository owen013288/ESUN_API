using System;
using System.Collections.Generic;

namespace ESUN_API.Models
{
    public partial class Company
    {
        public Company()
        {
            Revenue = new HashSet<Revenue>();
        }

        /// <summary>
        /// 公司代號
        /// </summary>
        public string CompanyCode { get; set; } = null!;
        /// <summary>
        /// 公司名稱
        /// </summary>
        public string CompanyName { get; set; } = null!;
        /// <summary>
        /// 產業別
        /// </summary>
        public Guid IndustryId { get; set; }
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

        public virtual Industry Industry { get; set; } = null!;
        public virtual ICollection<Revenue> Revenue { get; set; }
    }
}
