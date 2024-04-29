using Services.Logic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Facade
{
    internal static class LanguageService
    {
        public static string Translate(string key)
        {
            return LanguageLogic.Translate(key);
        }
    }
}
