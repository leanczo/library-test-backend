﻿using System;
using System.Collections.Generic;

#nullable disable

namespace IngresoSML2.Data
{
    public partial class Invoice
    {
        public Invoice()
        {
            InvoiceItems = new HashSet<InvoiceItem>();
        }

        public long InvoiceId { get; set; }
        public long CustomerId { get; set; }
        public DateTime Date { get; set; }

        public virtual Customer Customer { get; set; }
        public virtual ICollection<InvoiceItem> InvoiceItems { get; set; }
    }
}
