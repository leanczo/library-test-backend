using IngresoSML2.Data;
using IngresoSML2.Models;
using IngresoSML2.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace IngresoSML2.Controllers
{
    [Route("/api/customers")]
    [ApiController]
    public class CustomersController : ControllerBase
    {
        private readonly libraryContext dbContext;
        private readonly CustomersService _customersService;

        public CustomersController(libraryContext dbContext, CustomersService customersService)
        {
            this.dbContext = dbContext;
            _customersService = customersService;
        }

        [HttpGet]
        [AllowAnonymous]
        public IActionResult GetCustomers()
        {
            var customers = _customersService.GetAll();
            return Ok(customers);
        }

        [HttpPost]
        [AllowAnonymous]
        public async Task<IActionResult> CreateCustomerAsync([FromBody] CustomerPostModel input)
        {
            var customer = await _customersService.CreateCustomer(input);
            return Ok(customer);
        }
    }
}
