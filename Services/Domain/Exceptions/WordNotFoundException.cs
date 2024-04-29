using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Services.Facade;
using Services.Facade.Extentions;

namespace Services.Domain.Exceptions
{
    internal class WordNotFoundException : Exception
    {
        public WordNotFoundException() : base("No se encontró".Translate())
        {
            //Enviar un wp al grupo de administración...

        }
    }
}
