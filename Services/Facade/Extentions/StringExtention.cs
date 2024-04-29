using Services.Logic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace Services.Facade.Extentions
{
    public static class StringExtention
    {
        public static string Translate(this string key)
        {
            return LanguageLogic.Translate(key);
        }

        public static string ToUpperCapital(this string word)
        {
            return word;
        }
    }
}
