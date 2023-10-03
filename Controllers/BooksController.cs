using IngresoSML2.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace IngresoSML2.Controllers
{
    [Route("/api/books")]
    [ApiController]
    public class BooksController : ControllerBase
    {
        private readonly BooksService _booksService;

        public BooksController(BooksService customersService)
        {
            _booksService = customersService;
        }

        [HttpGet]
        [AllowAnonymous]
        public IActionResult GetCustomers()
        {
            var customers = _booksService.GetAll();
            return Ok(customers);
        }
    }
}
