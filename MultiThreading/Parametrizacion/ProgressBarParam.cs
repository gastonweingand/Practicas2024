using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MultiThreading.Parametrizacion
{
    internal class ProgressBarParam
    {
        public ProgressBar ProgressBar { get; set; }

        public int sleep { get; set; }

        public String PathBitacora { get; set; }

        public bool FinallyResetToZero { get; set; }

        private static object mutex = new object();

        public ProgressBarParam(ProgressBar ProgressBar, int sleep = 100, bool finallyResetToZero = true)
        {
            this.ProgressBar = ProgressBar;
            this.sleep = sleep;
            FinallyResetToZero = finallyResetToZero;

        }

        /// <summary>
        /// Este es el hilo de ejecución de cada barra
        /// </summary>
        public void EjecutarBarraProgreso()
        {
            for (int i = 0; i < 10; i++)
            {
                LockProgressPerformStep();
                Thread.Sleep(sleep);
            }

            ProgressBar.Step = -10;

            for (int i = 0; i < 10; i++)
            {
                LockProgressPerformStep();
                Thread.Sleep(sleep);
            }

            ProgressBar.Step = 10;

            if (FinallyResetToZero)
                ProgressBar.Value = 0;
        }

        private void LockProgressPerformStep()
        {
            lock (ProgressBarParam.mutex)
            {
                //Si tuviesemos 100 hilos esperando en la línea 38
                //Irían ingresando de a 1 a la vez
                ProgressBar.PerformStep();
            }
            //Aquí se libera el lock de cada Th
        }
    }
}
