using System;
using System.Collections.Generic;

#nullable disable

namespace IngresoSML2.Data
{
    public partial class InvoiceItem
    {
        public long InvoiceItemId { get; set; }
        public long InvoiceId { get; set; }
        public long LoanId { get; set; }

        public virtual Invoice Invoice { get; set; }
        public virtual Loan Loan { get; set; }
    }
}
