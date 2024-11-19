using System;
using System.Collections.Generic;

namespace ESUN_API.Models
{
    public partial class Industry
    {
        public Industry()
        {
            Company = new HashSet<Company>();
        }

        /// <summary>
        /// PK
        /// </summary>
        public Guid Id { get; set; }
        /// <summary>
        /// 產業名稱
        /// </summary>
        public string IndustryName { get; set; } = null!;
        /// <summary>
        /// 建立時間
        /// </summary>
        public DateTime CreateTime { get; set; }
        /// <summary>
        /// 修改時間
        /// </summary>
        public DateTime? ModifyTime { get; set; }

        public virtual ICollection<Company> Company { get; set; }
    }
}
