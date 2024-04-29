using Services.Logic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Facade
{
    public static class LanguageService
    {
        public static string Find(string key)
        {
            return LanguageLogic.Find(key);
        }
    }
}
