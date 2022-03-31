using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Moq;
using Unit_Testing.Controllers;
using Unit_Testing.Models;
using Unit_Testing.Services;
using Xunit;

namespace TestProject1
{
    public class EmployeeTest
    {
        public Mock<IEmployeeService> mock = new Mock<IEmployeeService>();

        [Fact]
        public async void GetEmployeeById()
        {
            mock.Setup(p => p.GetEmployeeById(1)).ReturnsAsync("user");
            EmployeeController emp = new EmployeeController(mock.Object);
            string result = await emp.GetEmployeeById(1);
            Assert.Equal("user", result);
        }

        [Fact]
        public async void GetEmployeeDetails()
        {
            var employeeDTO = new Employee()
            {
                Id = 1,
                Name = "user",
                Desgination = "test"
            };
            mock.Setup(p => p.GetEmployeeDetails(1)).ReturnsAsync(employeeDTO);
            EmployeeController emp = new EmployeeController(mock.Object);
            var result = await emp.GetEmployeeDetails(1);
            Assert.True(employeeDTO.Equals(result));
        }
    }

}