using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace PracticasService.App
{
    public class AppService
    {
        private readonly string pathFolderLog;
        public AppService(string folder) 
        {
            pathFolderLog = folder + "bitacora.log";
        }

        public void EscribirBitacora()
        {
            while (true)
            {
                using(StreamWriter sw = new StreamWriter(pathFolderLog, true))
                {
                    sw.WriteLine($"Fecha actual: {DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss")}");
                }
                Thread.Sleep(30000);
            }
        }
    }
}
