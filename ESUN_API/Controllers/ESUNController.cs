using Microsoft.AspNetCore.Mvc;

namespace ESUN_API.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class ESUNController : ControllerBase
    {
        private readonly ILogger<ESUNController> _logger;

        public ESUNController(ILogger<ESUNController> logger)
        {
            _logger = logger;
        }
    }
}