using IngresoSML2.Data;
using IngresoSML2.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace IngresoSML2.Services
{
    public class CustomersService : ICustomersService
    {
        private readonly libraryContext _dbContext;

        public CustomersService(libraryContext dbContext)
        {
            _dbContext = dbContext;
        }

        public List<Customer> GetAll()
        {
            return _dbContext.Customers.ToList();
        }

        public async Task<Customer> CreateCustomer(CustomerPostModel input)
        {
            var existingCustomer = await _dbContext.Customers
                                                   .FirstOrDefaultAsync(c => c.FirstName == input.FirstName &&
                                                                            c.LastName == input.LastName);
            if (existingCustomer != null)
            {
                throw new Exception("Ya existe un cliente con el mismo nombre y apellido.");
            }

            var newCustomer = new Customer
            {
                FirstName = input.FirstName,
                LastName = input.LastName,
                Address = input.Address,
            };

            _dbContext.Add(newCustomer);

            await _dbContext.SaveChangesAsync();

            return newCustomer;
        }
    }
}
