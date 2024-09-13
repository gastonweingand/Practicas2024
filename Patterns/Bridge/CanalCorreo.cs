using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Patterns.Bridge
{
    internal class CanalCorreo : ICanal
    {
        public void EnviarCorreo(string mensaje)
        {
            Console.WriteLine("Enviando correo: " + mensaje);
        }

        public void EnviarSMS(string mensaje)
        {
            // No implementado
        }

        public void EnviarWhatsApp(string mensaje)
        {
            throw new NotImplementedException();
        }
    }
}
