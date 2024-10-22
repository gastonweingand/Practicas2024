using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.ServiceProcess;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using PracticasService.App;

namespace PracticasService
{
    public partial class Service : ServiceBase
    {
        private readonly string pathFolderLog;

        private readonly string logFileName;
        public Service()
        {
            InitializeComponent();
            pathFolderLog = ConfigurationManager.AppSettings["LogPath"];
            logFileName = pathFolderLog + "service.log";
        }

        protected override void OnStart(string[] args)
        {            
            AppService appService = new AppService(pathFolderLog);
            Thread th = new Thread(appService.EscribirBitacora);
            th.Start();
            EscribirBitacora("Iniciando el servicio");
        }

        protected override void OnStop()
        {
            EscribirBitacora("Deteniendo el servicio");
        }

        protected override void OnPause()
        {
            EscribirBitacora("Pausando el servicio");
        }

        protected override void OnContinue()
        {
            EscribirBitacora("Continuando el servicio");
        }

        private void EscribirBitacora(string mensaje)
        {
            using (StreamWriter sw = new StreamWriter(logFileName, true))
            {
                sw.WriteLine($"{DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss")}: {mensaje}");
            }
        }
    }
}
