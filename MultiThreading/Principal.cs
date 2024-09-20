using Microsoft.VisualBasic;
using MultiThreading.Parametrizacion;
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
        List<ProgressBar> progressBarList = new List<ProgressBar>();

        public Principal()
        {
            InitializeComponent();
            CheckForIllegalCrossThreadCalls = false;
        }

        private void btnMostrarMensaje_Click(object sender, EventArgs e)
        {
            //LanzarHiloBarra();
            MessageBox.Show("Aprendiendo sobre hilos");
        }

        //private void EjecutarBarraProgreso(object selectedColor)
        //{
        //    Color color = (Color)selectedColor;

        //    progressBar1.ForeColor = color;

        //    for (int i = 0; i < 10; i++)
        //    {
        //        progressBar1.PerformStep();
        //        Thread.Sleep(500);
        //    }
        //    progressBar1.Value = 0;
        //}

        private void Principal_Load(object sender, EventArgs e)
        {
            foreach (Control ctrl in this.Controls)
            {
                if (ctrl is ProgressBar)
                {
                    progressBarList.Add(ctrl as ProgressBar);
                }
            }
        }

        private void LanzarHiloBarra(ProgressBar progressBar)
        {
            if (colorDialog.ShowDialog() == DialogResult.OK)
            {
                progressBar.ForeColor = colorDialog.Color;
                ProgressBarParam barParam = new ProgressBarParam(progressBar, 1000);
                Thread th = new Thread(barParam.EjecutarBarraProgreso);
                th.Start();
            }
        }

        private void btnSeleccionar_Click(object sender, EventArgs e)
        {
            string retorno = Interaction.InputBox("Ingrese la barra deseada");

            int index = int.Parse(retorno) - 1;

            if (index < progressBarList.Count)
                MessageBox.Show(progressBarList[index].Name);
            else
                MessageBox.Show("Índice no válido", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);

            LanzarHiloBarra(progressBarList[index]);
        }
    }
}
