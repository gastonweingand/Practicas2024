using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Patterns.Bridge
{
    internal interface ICanal
    {
        void EnviarCorreo(string mensaje);
        void EnviarSMS(string mensaje);
        void EnviarWhatsApp(string mensaje);
    }
}
