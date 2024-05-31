using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DemoParcial.Domain
{
    public class Movimiento
    {
        public Guid Id { get; set; }

        public Cuenta CuentaOrigen { get; set; }

        public Cuenta CuentaDestino { get; set; }

        public DateTime Fecha { get; set; }

        public decimal Monto { get; set; }

        public TipoMovimiento TipoMovimiento { get; set; }

    }

    public enum TipoMovimiento
    {
        Transferencia,
        Conversion,
        Deposito
    }
}
