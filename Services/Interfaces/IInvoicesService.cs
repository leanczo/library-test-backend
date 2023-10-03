using IngresoSML2.Data;
using IngresoSML2.Models;
using System.Threading.Tasks;

namespace IngresoSML2.Services
{
    public interface IInvoicesService
    {
        Task<Invoice> CreateInvoice(InvoicePostModel input);
    }
}
