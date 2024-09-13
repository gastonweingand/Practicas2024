using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Patterns.Bridge
{
    internal abstract class Notificacion
    {
        protected ICanal canal;
        protected string mensaje;

        protected Notificacion(ICanal canal, string mensaje)
        {
            this.canal = canal;
            this.mensaje = mensaje;
        }

        public abstract void Enviar();
    }
}
