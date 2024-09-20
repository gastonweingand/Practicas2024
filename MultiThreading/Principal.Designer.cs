namespace MultiThreading
{
    partial class Principal
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.progressBar1 = new System.Windows.Forms.ProgressBar();
            this.btnMostrarMensaje = new System.Windows.Forms.Button();
            this.colorDialog = new System.Windows.Forms.ColorDialog();
            this.progressBar2 = new System.Windows.Forms.ProgressBar();
            this.progressBar3 = new System.Windows.Forms.ProgressBar();
            this.btnSeleccionar = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // progressBar1
            // 
            this.progressBar1.ForeColor = System.Drawing.Color.ForestGreen;
            this.progressBar1.Location = new System.Drawing.Point(222, 77);
            this.progressBar1.Name = "progressBar1";
            this.progressBar1.Size = new System.Drawing.Size(492, 49);
            this.progressBar1.TabIndex = 0;
            // 
            // btnMostrarMensaje
            // 
            this.btnMostrarMensaje.Location = new System.Drawing.Point(222, 424);
            this.btnMostrarMensaje.Name = "btnMostrarMensaje";
            this.btnMostrarMensaje.Size = new System.Drawing.Size(169, 41);
            this.btnMostrarMensaje.TabIndex = 1;
            this.btnMostrarMensaje.Text = "Mensaje";
            this.btnMostrarMensaje.UseVisualStyleBackColor = true;
            this.btnMostrarMensaje.Click += new System.EventHandler(this.btnMostrarMensaje_Click);
            // 
            // progressBar2
            // 
            this.progressBar2.ForeColor = System.Drawing.Color.ForestGreen;
            this.progressBar2.Location = new System.Drawing.Point(222, 176);
            this.progressBar2.Name = "progressBar2";
            this.progressBar2.Size = new System.Drawing.Size(492, 49);
            this.progressBar2.TabIndex = 2;
            // 
            // progressBar3
            // 
            this.progressBar3.ForeColor = System.Drawing.Color.ForestGreen;
            this.progressBar3.Location = new System.Drawing.Point(222, 291);
            this.progressBar3.Name = "progressBar3";
            this.progressBar3.Size = new System.Drawing.Size(492, 49);
            this.progressBar3.TabIndex = 3;
            // 
            // btnSeleccionar
            // 
            this.btnSeleccionar.Location = new System.Drawing.Point(461, 424);
            this.btnSeleccionar.Name = "btnSeleccionar";
            this.btnSeleccionar.Size = new System.Drawing.Size(253, 41);
            this.btnSeleccionar.TabIndex = 4;
            this.btnSeleccionar.Text = "Seleccionar Barra";
            this.btnSeleccionar.UseVisualStyleBackColor = true;
            this.btnSeleccionar.Click += new System.EventHandler(this.btnSeleccionar_Click);
            // 
            // Principal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(12F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(921, 519);
            this.Controls.Add(this.btnSeleccionar); 
            this.Controls.Add(this.btnMostrarMensaje);
            this.Controls.Add(this.progressBar1);
            this.Controls.Add(this.progressBar2);
            this.Controls.Add(this.progressBar3);
            this.Name = "Principal";
            this.Text = "Principal";
            this.Load += new System.EventHandler(this.Principal_Load);
            this.ResumeLayout(false);

        }

        #endregion

        
        private System.Windows.Forms.Button btnMostrarMensaje;
        private System.Windows.Forms.ColorDialog colorDialog;
        private System.Windows.Forms.ProgressBar progressBar1;
        private System.Windows.Forms.ProgressBar progressBar2;
        private System.Windows.Forms.ProgressBar progressBar3;
        private System.Windows.Forms.Button btnSeleccionar;
    }
}