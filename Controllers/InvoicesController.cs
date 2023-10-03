using IngresoSML2.Models;
using IngresoSML2.Services;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace IngresoSML2.Controllers
{
    [Route("/api/invoices")]
    [ApiController]
    public class InvoicesController : ControllerBase
    {
        private readonly InvoicesService _invoicesService;

        public InvoicesController(InvoicesService invoicesService)
        {
            _invoicesService = invoicesService;
        }

        [HttpPost]
        public async Task<IActionResult> CreateInvoice([FromBody] InvoicePostModel input)
        {
            var invoice = await _invoicesService.CreateInvoice(input);
            return Ok(invoice);
        }
    }
}
