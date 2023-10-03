using IngresoSML2.Data;
using System.Collections.Generic;
using System.Linq;

namespace IngresoSML2.Services
{
    public class BooksService
    {
        private readonly libraryContext _dbContext;

        public BooksService(libraryContext dbContext)
        {
            _dbContext = dbContext;
        }

        public List<Book> GetAll()
        {
            return _dbContext.Books.ToList();
        }
    }
}
