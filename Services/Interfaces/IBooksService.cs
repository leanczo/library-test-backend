using IngresoSML2.Data;
using System.Collections.Generic;

namespace IngresoSML2.Services
{
    public interface IBooksService
    {
        List<Book> GetAll();
    }
}
