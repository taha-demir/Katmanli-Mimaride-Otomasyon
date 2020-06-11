namespace EnvanterProV2UI
{
    partial class frmSatislar
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
            this.dataGridSatislar = new System.Windows.Forms.DataGridView();
            this.txtMusteriAra = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridSatislar)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridSatislar
            // 
            this.dataGridSatislar.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridSatislar.Location = new System.Drawing.Point(2, 50);
            this.dataGridSatislar.Name = "dataGridSatislar";
            this.dataGridSatislar.Size = new System.Drawing.Size(671, 388);
            this.dataGridSatislar.TabIndex = 4;
            // 
            // txtMusteriAra
            // 
            this.txtMusteriAra.Location = new System.Drawing.Point(12, 24);
            this.txtMusteriAra.Name = "txtMusteriAra";
            this.txtMusteriAra.Size = new System.Drawing.Size(120, 20);
            this.txtMusteriAra.TabIndex = 5;
            this.txtMusteriAra.TextChanged += new System.EventHandler(this.txtMusteriAra_TextChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 8);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(60, 13);
            this.label1.TabIndex = 6;
            this.label1.Text = "Müşteri Ara";
            // 
            // frmSatislar
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(679, 450);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtMusteriAra);
            this.Controls.Add(this.dataGridSatislar);
            this.Name = "frmSatislar";
            this.Text = "frmSatislar";
            this.Load += new System.EventHandler(this.frmSatislar_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridSatislar)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridSatislar;
        private System.Windows.Forms.TextBox txtMusteriAra;
        private System.Windows.Forms.Label label1;
    }
}