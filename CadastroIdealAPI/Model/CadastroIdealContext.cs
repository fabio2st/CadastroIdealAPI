using Microsoft.EntityFrameworkCore;

namespace CadastroIdealAPI.Model
{
    public class CadastroIdealContext : DbContext
    {
        public CadastroIdealContext(DbContextOptions<CadastroIdealContext> options) : base(options)
        {
        }
        public DbSet<Pessoa> Pessoas { get; set; }
    }
}
