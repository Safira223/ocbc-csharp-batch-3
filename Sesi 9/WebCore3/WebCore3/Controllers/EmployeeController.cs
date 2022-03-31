using System;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;
using WebCore3.Models;

namespace WebCore3.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    
        public class EmployeeController  : ControllerBase
        {
            private EmployeeContext _context;

            public EmployeeController(EmployeeContext context)
            {
                this._context = context;
            }

        // GET : api/User
        [HttpGet(Name = "Get Employee")]
        public ActionResult<IEnumerable<EmployeeItem>> GetEmployeeItem()
        {
            _context = HttpContext.RequestServices.GetService(typeof(EmployeeContext)) as EmployeeContext;
            //return new string[]
            return _context.GetAllEmployee();
        }

        // GET : api/user/(id)
        [HttpGet("{id}", Name = "Get Employee where")]
        public ActionResult<IEnumerable<EmployeeItem>> GetEmployeeItem(string id)
        {
            _context = HttpContext.RequestServices.GetService(typeof(EmployeeContext)) as EmployeeContext;
            return _context.GetEmployee(id);
        }
    }
}
