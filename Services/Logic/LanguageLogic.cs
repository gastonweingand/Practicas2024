using Services.Dao;
using Services.Domain.Exceptions;
using System;
using System.CodeDom;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Logic
{
    internal static class LanguageLogic
    {
        public static string Find(string key)
        {
            try
            {
                return LanguageDao.Find(key);
            }
            catch(WordNotFoundException)
            {
                //Acá voy a poner cierta lógica...
                LanguageDao.WriteKey(key);
                throw new Exception("Lo que quiero");
            }
            catch
            {
                //Acá estamos en la B
                throw;
            }
        }
    }
}
