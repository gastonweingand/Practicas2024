using Services.Dao;
using Services.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Logic
{
    internal static class LoggerLogic
    {
        public static void WriteLog(Log log, Exception ex = null)
        {
            if(log.TraceLevel == System.Diagnostics.TraceLevel.Error)
            {
                //Enviar mensaje vía wp a fulanito...
            }

            LoggerDao.WriteLog(log, ex);
        }
    }
}
