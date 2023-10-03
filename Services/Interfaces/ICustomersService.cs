using IngresoSML2.Data;
using IngresoSML2.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace IngresoSML2.Services
{
    public interface ICustomersService
    {
        List<Customer> GetAll();
        Task<Customer> CreateCustomer(CustomerPostModel input);
    }
}
