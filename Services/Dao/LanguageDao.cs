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
        private static string Path = ConfigurationManager.AppSettings["LanguagePath"];
        public static string Translate(string key)
        {
            string language = Thread.CurrentThread.CurrentUICulture.Name;
            string fileName = Path + language;

            using (StreamReader str = new StreamReader(fileName))
            {
                while (!str.EndOfStream)
                {
                    string line = str.ReadLine();
                    string [] columns = line.Split('=');

                    if (columns[0].ToLower() == key.ToLower())
                    {
                        //Mejorar la técnica con el usuario de diccionarios en memoria    
                        //Dictionary<string,string> keyValuePairs = new Dictionary<string,string>();
                        //Probar redis o algún soft de caché
                        //Encontré la clave buscada...
                        return columns[1];
                    }
                }
            }
            //No encontré la clave...
            throw new Exception("No encontré la palabra...");

        }

        public static void WriteKey(string key)
        {
            string language = Thread.CurrentThread.CurrentUICulture.Name;

        }

        public static List<string> GetLanguages()
        {
            return new List<string>();
        }



    }
}
