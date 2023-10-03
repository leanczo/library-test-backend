﻿using IngresoSML2.Data;
using IngresoSML2.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;

namespace IngresoSML2.Controllers
{
    [Route("/api/invoice")]
    [ApiController]
    public class InvoicesController : ControllerBase
    {
        private readonly libraryContext dbContext;

        public InvoicesController(libraryContext dbContext)
        {
            this.dbContext = dbContext;
        }

        [HttpPost]
        public async Task<IActionResult> Add([FromBody] InvoicePostModel pm)
        {
            throw new NotImplementedException();
        }
    }
}
