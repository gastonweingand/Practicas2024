using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Patterns.Bridge
{
    internal class CanalSMS : ICanal
    {
        public void EnviarCorreo(string mensaje)
        {
            // No implementado
        }

        public void EnviarSMS(string mensaje)
        {
            Console.WriteLine("Enviando SMS: " + mensaje);
        }

        public void EnviarWhatsApp(string mensaje)
        {
            throw new NotImplementedException();
        }
    }
}
