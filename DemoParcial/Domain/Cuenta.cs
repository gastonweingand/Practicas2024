using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DemoParcial.Domain
{
    public abstract class Cuenta
    {
        public Guid Id { get; set; }

        public decimal Saldo { get; set; }

        public string Titular { get; set; }

    }
}
