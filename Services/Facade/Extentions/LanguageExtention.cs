using Services.Logic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Facade.Extentions
{
    public static class LanguageExtention
    {
        /// <summary>
        /// this es para métodos de extensión de tipos...
        /// </summary>
        /// <param name="word"></param>
        /// <returns></returns>
        public static string Translate(this string word)
        {
            return LanguageLogic.Find(word);
        }
    }
}
