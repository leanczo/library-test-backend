using System;
using System.Collections.Generic;

#nullable disable

namespace IngresoSML2.Data
{
    public partial class Book
    {
        public Book()
        {
            BookAuthors = new HashSet<BookAuthor>();
            Loans = new HashSet<Loan>();
        }

        public long BookId { get; set; }
        public string Code { get; set; }
        public string Title { get; set; }
        public string Publisher { get; set; }

        public virtual ICollection<BookAuthor> BookAuthors { get; set; }
        public virtual ICollection<Loan> Loans { get; set; }
    }
}
