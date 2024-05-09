using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Diagnostics;

namespace Services.Domain
{
    public class Log
    {
        public string Message { get; set; }

        public TraceLevel TraceLevel { get; set; }

        public DateTime Date { get; set; }

        public Log(string message, TraceLevel traceLevel = TraceLevel.Info, DateTime date = default)
        {
            Message = message;
            TraceLevel = traceLevel;
            Date = (date==default)? DateTime.Now:date;
        }

        //Definir lo que ustedes crean conveniente para registro de una bitácora...


    }
}
