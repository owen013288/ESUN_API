using ESUN_API.Dto.Rs;
using Microsoft.AspNetCore.Mvc;

namespace ESUN_API.Controllers
{
    /// <summary>
    /// 基底控制
    /// </summary>
    public class BaseController : ControllerBase
    {
        /// <summary>
        /// 基本回覆
        /// </summary>
        /// <param name="result"></param>
        /// <returns></returns>
        protected IActionResult ActionReturn(DataRs result)
        {
            if (result.Status == 200)
            {
                return Ok(result);
            }
            else if (result.Status == 204)
            {
                return NoContent();
            }
            else if (result.Status == 400)
            {
                return BadRequest(result);
            }
            else if (result.Status == 401)
            {
                return Unauthorized(result);
            }
            else if (result.Status == 403)
            {
                return StatusCode(StatusCodes.Status403Forbidden, result);
            }
            else if (result.Status == 404)
            {
                return NotFound(result);
            }
            else
            {
                return StatusCode(StatusCodes.Status500InternalServerError, result);
            }
        }

        /// <summary>
        /// 回傳資料
        /// </summary>
        /// <param name="Status">狀態碼</param>
        /// <param name="Message">訊息</param>
        /// <param name="Data">資料</param>
        /// <param name="Details">細節</param>
        /// <returns></returns>
        protected DataRs ReturnDataRs(int Status, string Message, dynamic? Data, string Details)
        {
            return new DataRs()
            {
                Status = Status,
                Message = Message,
                Data = Data,
                Details = Details
            };
        }
    }
}