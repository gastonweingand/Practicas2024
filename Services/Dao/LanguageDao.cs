using Services.Domain.Exceptions;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Services.Dao
{
    internal static class LanguageDao
    {
        private static string PathBase = ConfigurationManager.AppSettings["TranslatePath"];
        public static string Find(string key)
        {
            string idLanguage = Thread.CurrentThread.CurrentUICulture.Name;

            string path = PathBase + idLanguage;

            using(StreamReader streamReader = new StreamReader(path))
            {
                while(!streamReader.EndOfStream)
                {
                    string line = streamReader.ReadLine();
                    string[] values = line.Split('=');

                    if (values[0] == key)
                    {
                        //Encontré la clave buscada...
                        return values[1];
                    }
                }
            }
            throw new WordNotFoundException();
        }

        public static void WriteKey(string key)
        {
            //Escribir la lógica para agregar una nueva clave...
        }
    }
}
