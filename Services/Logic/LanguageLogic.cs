using Services.Dao;
using Services.Domain.Exceptions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Logic
{
    internal static class LanguageLogic
    {
        public static string Translate(string key)
        {
            try
            {
                return LanguageDao.Translate(key);
            }
            catch(WordNotFoundException ex)
            {
                //Enviar por ws al grupo...
                LanguageDao.WriteKey(key);
                //Bajar una bitácora contando de este problemita...
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

            return key;
        }
    }
}
