using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MultiThreading
{
    public partial class Principal : Form
    {
        public Principal()
        {
            InitializeComponent();
            CheckForIllegalCrossThreadCalls = false;

        }

        private void btnMostrarMensaje_Click(object sender, EventArgs e)
        {
            LanzarHiloBarra();
            MessageBox.Show("Aprendiendo sobre hilos");
        }

        private void EjecutarBarraProgreso(object selectedColor)
        {
            Color color = (Color)selectedColor;

            progressBar1.ForeColor = color;

            for (int i = 0; i < 10; i++)
            {
                progressBar1.PerformStep();
                Thread.Sleep(500);
            }
            progressBar1.Value = 0;
        }

        private void Principal_Load(object sender, EventArgs e)
        {
            LanzarHiloBarra();
        }

        private void LanzarHiloBarra()
        {
            if (colorDialog.ShowDialog() == DialogResult.OK)
            {
                Thread th = new Thread(EjecutarBarraProgreso);
                th.Start(colorDialog.Color);
            }
        }
    }
}
