using ESUN_API.Dto.Rs;
using Microsoft.AspNetCore.Mvc;

namespace ESUN_API.Controllers
{
    /// <summary>
    /// �򩳱���
    /// </summary>
    public class BaseController : ControllerBase
    {
        /// <summary>
        /// �򥻦^��
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
        /// �^�Ǹ��
        /// </summary>
        /// <param name="Status">���A�X</param>
        /// <param name="Message">�T��</param>
        /// <param name="Data">���</param>
        /// <param name="Details">�Ӹ`</param>
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