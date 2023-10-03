using System;
using System.Collections.Generic;

#nullable disable

namespace IngresoSML2.Data
{
    public partial class Customer
    {
        public Customer()
        {
            Invoices = new HashSet<Invoice>();
            Loans = new HashSet<Loan>();
        }

        public long CustomerId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Address { get; set; }

        public virtual ICollection<Invoice> Invoices { get; set; }
        public virtual ICollection<Loan> Loans { get; set; }
    }
}
