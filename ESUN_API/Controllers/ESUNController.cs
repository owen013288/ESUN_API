using ESUN_API.Dto.Rq;
using ESUN_API.Handler;
using ESUN_API.Service;
using MediatR;
using Microsoft.AspNetCore.Mvc;

namespace ESUN_API.Controllers
{
    /// <summary>
    /// 收入清單
    /// </summary>
    [ApiController]
    [Route("api/[controller]")]
    public class ESUNController : BaseController
    {
        private readonly RevenueService _revenueService;
        private readonly ILogger<ESUNController> _logger;
        private readonly IMediator _mediator;

        public ESUNController(ILogger<ESUNController> logger, RevenueService revenueService, IMediator mediator)
        {
            _logger = logger;
            _revenueService = revenueService;
            _mediator = mediator;
        }

        /// <summary>
        /// 取得收入清單
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public async Task<IActionResult> Get(int page, int pageSize)
        {
            try
            {
                var result = await _mediator.Send(new GetRevenueQuery(page, pageSize));

                return ActionReturn(result);
            }
            catch (Exception ex)
            {
                // 處理異常並返回適當的HTTP響應
                return StatusCode(StatusCodes.Status500InternalServerError, ReturnDataRs(StatusCodes.Status500InternalServerError, "伺服器內部錯誤！", "", ex.Message));
            }
        }

        /// <summary>
        /// 新增收入資料
        /// </summary>
        /// <param name="rq">收入Rq</param>
        /// <returns></returns>
        [HttpPost]
        public async Task<IActionResult> Post(RevenueRq rq)
        {
            try
            {
                var result = await _revenueService.Post(rq);

                return ActionReturn(result);
            }
            catch (Exception ex)
            {
                // 處理異常並返回適當的HTTP響應
                return StatusCode(StatusCodes.Status500InternalServerError, ReturnDataRs(StatusCodes.Status500InternalServerError, "伺服器內部錯誤！", "", ex.Message));
            }
        }
    }
}