namespace ESUN_API.Dto.Rs
{
    /// <summary>
    /// 回傳資料
    /// </summary>
    public class DataRs
    {
        /// <summary>
        /// 狀態碼
        /// </summary>
        public int Status { get; set; }

        /// <summary>
        /// 訊息
        /// </summary>
        public string Message { get; set; } = "";

        /// <summary>
        /// 資料
        /// </summary>
        public dynamic? Data { get; set; } = null;

        /// <summary>
        /// 細節
        /// </summary>
        public string Details { get; set; } = "";
    }
}