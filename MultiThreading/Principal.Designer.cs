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
            this.btnMostrarMensaje.Location = new System.Drawing.Point(377, 177);
            this.btnMostrarMensaje.Name = "btnMostrarMensaje";
            this.btnMostrarMensaje.Size = new System.Drawing.Size(169, 41);
            this.btnMostrarMensaje.TabIndex = 1;
            this.btnMostrarMensaje.Text = "Mensaje";
            this.btnMostrarMensaje.UseVisualStyleBackColor = true;
            this.btnMostrarMensaje.Click += new System.EventHandler(this.btnMostrarMensaje_Click);
            // 
            // Principal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(12F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(921, 519);
            this.Controls.Add(this.btnMostrarMensaje);
            this.Controls.Add(this.progressBar1);
            this.Name = "Principal";
            this.Text = "Principal";
            this.Load += new System.EventHandler(this.Principal_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ProgressBar progressBar1;
        private System.Windows.Forms.Button btnMostrarMensaje;
        private System.Windows.Forms.ColorDialog colorDialog;
    }
}