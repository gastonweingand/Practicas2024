using Services.Domain;
using Services.Logic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Diagnostics;

namespace Services.Facade
{
    public static class LoggerService
    {
        public static void WriteLog(Log log, Exception ex = null)
        {
            LoggerLogic.WriteLog(log, ex);
        }

        /// <summary>
        /// Si solo se usa la bitácora con motivos de información (DEFAULT = INFO)
        /// </summary>
        /// <param name="message"></param>
        /// <param name="level"></param>
        public static void WriteLog(string message, TraceLevel level = TraceLevel.Info)
        {
            LoggerLogic.WriteLog(new Log(message, level));
        }

        public static void WriteException(Exception ex)
        {
            LoggerLogic.WriteLog(new Log(ex.Message, TraceLevel.Error), ex);
        }
    }
}
