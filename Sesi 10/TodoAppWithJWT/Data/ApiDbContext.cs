using Microsoft.EntityFrameworkCore;
using TodoAppWithJWT.Models;
using TodoAppWithJWT.Data;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.AspNetCore.Identity.UI;

namespace TodoAppWithJWT.Data
{
    public class ApiDbContext : IdentityDbContext
    {
        public virtual DbSet<ItemData> Items {get;set;}

        public ApiDbContext(DbContextOptions<ApiDbContext> options) : base(options)
        {

        }

    }
    
}