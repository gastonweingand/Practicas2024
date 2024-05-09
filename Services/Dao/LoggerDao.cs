using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Services.Domain;
using System.Diagnostics;
using System.Configuration;
using System.IO;

namespace Services.Dao
{
    internal static class LoggerDao 
    {
        private static string PathLogError { get; set; } = ConfigurationManager.AppSettings["PathLogError"];
        private static string PathLogInfo { get; set; } = ConfigurationManager.AppSettings["PathLogInfo"];

        public static void WriteLog(Log log, Exception ex = null)
        {
            switch (log.TraceLevel)
            {

                case TraceLevel.Error:
                    string formatMessage = FormatMessage(log);
                    formatMessage += ex.StackTrace;

                    WriteToFile(PathLogError, formatMessage);
                    break;

                case TraceLevel.Warning:
                case TraceLevel.Verbose:
                case TraceLevel.Info:
                    //Aplicando particularidades para cada severidad...
                    WriteToFile(PathLogInfo, FormatMessage(log));
                    break;
            }
        }

        private static string FormatMessage(Log log)
        {
            return $"{log.Date.ToString("dd/MM/yyyy HH:mm:ss")} [{log.TraceLevel}] : {log.Message}";
        }

        private static void WriteToFile(string path, string message)
        {
            //Definir política de depuración de logs (Corte)
            path = DateTime.Now.ToString("dd-MM-yyyy") + path;

            using (StreamWriter str = new StreamWriter(path, true))
            {
                str.WriteLine(message);
            }
        }
    }
}
