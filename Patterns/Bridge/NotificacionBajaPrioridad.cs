using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Patterns.Bridge
{
    internal class NotificacionBajaPrioridad : Notificacion
    {
        public NotificacionBajaPrioridad(ICanal canal, string mensaje) : base(canal, mensaje)
        {
        }

        public override void Enviar()
        {
            canal.EnviarCorreo(mensaje); // Ejemplo usando correo
        }
    }
}
