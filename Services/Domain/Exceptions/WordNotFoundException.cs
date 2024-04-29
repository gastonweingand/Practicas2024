using Services.Facade.Extentions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Domain.Exceptions
{
    internal class WordNotFoundException : Exception
    {
        public WordNotFoundException() : base("Palabra no encontrada...".Translate())
        {

        }
    }
}
