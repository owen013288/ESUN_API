using ESUN_API.Dto.Rs;

namespace ESUN_API.Service
{
    /// <summary>
    /// 基底邏輯
    /// </summary>
    public class BaseService
    {
        /// <summary>
        /// 回傳資料
        /// </summary>
        /// <param name="Status">狀態碼</param>
        /// <param name="Message">訊息</param>
        /// <param name="Data">資料</param>
        /// <param name="Details">細節</param>
        /// <returns></returns>
        public DataRs ReturnDataRs(int Status, string Message, dynamic? Data, string Details)
        {
            return new DataRs()
            {
                Status = Status,
                Message = Message,
                Data = Data,
                Details = Details
            };
        }

        /// <summary>
        /// 回傳資料
        /// </summary>
        /// <param name="Status">狀態碼</param>
        /// <param name="Message">訊息</param>
        /// <param name="Data">資料</param>
        /// <param name="Details">細節</param>
        /// <returns></returns>
        public Task<DataRs> ReturnDataRsAsync(int Status, string Message, dynamic? Data, string Details)
        {
            return Task.FromResult(new DataRs()
            {
                Status = Status,
                Message = Message,
                Data = Data,
                Details = Details
            });
        }
    }
}