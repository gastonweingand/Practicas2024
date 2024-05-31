using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DemoParcial.Domain
{
    internal class Wallet : Cuenta
    {
        public string Direccion { get; set; }

        //Si fuese exchange, no tego address
        //tendría un Tag
        //public string Tag { get; set; }
    }
}
