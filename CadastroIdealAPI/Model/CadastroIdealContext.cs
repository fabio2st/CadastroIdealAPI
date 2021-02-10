using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

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
