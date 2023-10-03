using System;
using System.Collections.Generic;

#nullable disable

namespace IngresoSML2.Data
{
    public partial class Loan
    {
        public Loan()
        {
            InvoiceItems = new HashSet<InvoiceItem>();
        }

        public long LoanId { get; set; }
        public long BookId { get; set; }
        public long CustomerId { get; set; }
        public DateTime? ReturnDate { get; set; }

        public virtual Book Book { get; set; }
        public virtual Customer Customer { get; set; }
        public virtual ICollection<InvoiceItem> InvoiceItems { get; set; }
    }
}
