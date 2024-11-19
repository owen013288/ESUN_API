using Microsoft.EntityFrameworkCore;

namespace ESUN_API.Models
{
    public partial class ESUNContext : DbContext
    {
        public ESUNContext()
        {
        }

        public ESUNContext(DbContextOptions<ESUNContext> options)
            : base(options)
        {
        }
    }
}