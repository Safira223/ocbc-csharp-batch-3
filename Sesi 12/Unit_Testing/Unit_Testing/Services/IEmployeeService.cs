using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Unit_Testing.Models;

namespace Unit_Testing.Services
{
    public interface IEmployeeService
    {
        Task<string> GetEmployeeById(int EmpID);
        Task<Employee> GetEmployeeDetails(int EmpID);
    }
}