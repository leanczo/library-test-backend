using System.Collections.Generic;

namespace IngresoSML2.Models
{
    public class InvoicePostModel
    {
        public long CustomerId { get; set; }
        public List<long> BooksIds { get; set; }
    }
}
