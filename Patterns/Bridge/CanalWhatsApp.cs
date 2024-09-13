using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Patterns.Bridge
{
    internal class CanalWhatsApp : ICanal
    {
        public void EnviarCorreo(string mensaje)
        {
            throw new NotImplementedException();
        }

        public void EnviarSMS(string mensaje)
        {
            throw new NotImplementedException();
        }

        public void EnviarWhatsApp(string mensaje)
        {
            Console.WriteLine("Enviando whatsapp: " , mensaje);
        }
    }
}
