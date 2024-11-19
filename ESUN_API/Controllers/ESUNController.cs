using ESUN_API.Dto.Rq;
using ESUN_API.Service;
using Microsoft.AspNetCore.Mvc;

namespace ESUN_API.Controllers
{
    /// <summary>
    /// ���J�M��
    /// </summary>
    [ApiController]
    [Route("api/[controller]")]
    public class ESUNController : BaseController
    {
        private readonly RevenueService _revenueService;
        private readonly ILogger<ESUNController> _logger;

        public ESUNController(ILogger<ESUNController> logger, RevenueService revenueService)
        {
            _logger = logger;
            _revenueService = revenueService;
        }

        /// <summary>
        /// ���o���J�M��
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public async Task<IActionResult> Get()
        {
            try
            {
                var result = await _revenueService.Get();

                return ActionReturn(result);
            }
            catch (Exception ex)
            {
                // �B�z���`�ê�^�A��HTTP�T��
                return StatusCode(StatusCodes.Status500InternalServerError, ReturnDataRs(StatusCodes.Status500InternalServerError, "���A���������~�I", "", ex.Message));
            }
        }

        /// <summary>
        /// �s�W���J���
        /// </summary>
        /// <param name="rq">���JRq</param>
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
                // �B�z���`�ê�^�A��HTTP�T��
                return StatusCode(StatusCodes.Status500InternalServerError, ReturnDataRs(StatusCodes.Status500InternalServerError, "���A���������~�I", "", ex.Message));
            }
        }
    }
}