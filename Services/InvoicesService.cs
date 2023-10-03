using IngresoSML2.Data;
using IngresoSML2.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Threading.Tasks;

namespace IngresoSML2.Services
{
    public class InvoicesService : IInvoicesService
    {
        private readonly libraryContext _dbContext;

        public InvoicesService(libraryContext dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task<Invoice> CreateInvoice(InvoicePostModel input)
        {
            using var transaction = await _dbContext.Database.BeginTransactionAsync();

            try
            {
                var newInvoice = new Invoice
                {
                    CustomerId = input.CustomerId,
                    Date = DateTime.UtcNow,
                };
                _dbContext.Invoices.Add(newInvoice);
                await _dbContext.SaveChangesAsync();

                foreach (var item in input.BooksIds)
                {
                    var newLoan = new Loan
                    {
                        CustomerId = input.CustomerId,
                        BookId = item,
                        ReturnDate = DateTime.UtcNow.AddDays(7),
                    };
                    _dbContext.Loans.Add(newLoan);

                    await _dbContext.SaveChangesAsync();

                    var newInvoiceItem = new InvoiceItem
                    {
                        InvoiceId = newInvoice.InvoiceId,
                        LoanId = newLoan.LoanId,
                    };
                    _dbContext.InvoiceItems.Add(newInvoiceItem);
                }

                await _dbContext.SaveChangesAsync();

                await transaction.CommitAsync();

                return newInvoice;
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
                await transaction.RollbackAsync();
                throw;
            }
        }

    }
}
