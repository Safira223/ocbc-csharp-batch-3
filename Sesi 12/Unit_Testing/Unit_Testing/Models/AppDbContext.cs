using Microsoft.EntityFrameworkCore;
using Unit_Testing.Models;
using MySql.EntityFrameworkCore;
using System;

namespace Unit_Testing.Models
{
    public class AppDbContext : DbContext
    {
        public virtual DbSet<Employee> Employees { get; set; }

        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        {

        }

    }
}