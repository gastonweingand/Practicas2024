using Services.Domain;
using System;
using System.Diagnostics;
using System.IO;

namespace Services.Dao
{
    internal interface ILoggerDao
    {

        void WriteLog(Log log, Exception ex = null);


    }
}