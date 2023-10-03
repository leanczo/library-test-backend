using System;
using System.Collections.Generic;

namespace IngresoSML2.Models
{
    public class InvoicePostModel
    {

        public DateTime Date { get; set; }

        public int CustomerId { get; set; }

        public List<String> Codes { get; set; }

    }
}
