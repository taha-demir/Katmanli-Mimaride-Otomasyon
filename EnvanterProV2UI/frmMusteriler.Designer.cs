namespace EnvanterProV2UI
{
    partial class frmMusteriler
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
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.rtxAdres = new System.Windows.Forms.Label();
            this.richTextAdres = new System.Windows.Forms.RichTextBox();
            this.btnSil = new System.Windows.Forms.Button();
            this.btnMusteriGuncelle = new System.Windows.Forms.Button();
            this.btnMusteriEkle = new System.Windows.Forms.Button();
            this.label6 = new System.Windows.Forms.Label();
            this.txtMusteriAdi = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.txtSoyadi = new System.Windows.Forms.TextBox();
            this.txtTelefon = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btnTumunuOde = new System.Windows.Forms.Button();
            this.label9 = new System.Windows.Forms.Label();
            this.txtOdeme = new System.Windows.Forms.TextBox();
            this.btnOde = new System.Windows.Forms.Button();
            this.btnBorcEkle = new System.Windows.Forms.Button();
            this.dateOdemeTarihi = new System.Windows.Forms.DateTimePicker();
            this.txtBorc = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label1 = new System.Windows.Forms.Label();
            this.txtMusteriAra = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.dgvMusteri = new System.Windows.Forms.DataGridView();
            this.dgvBorc = new System.Windows.Forms.DataGridView();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.groupBox5 = new System.Windows.Forms.GroupBox();
            this.groupBox3.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvMusteri)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvBorc)).BeginInit();
            this.groupBox4.SuspendLayout();
            this.groupBox5.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox3
            // 
            this.groupBox3.BackColor = System.Drawing.SystemColors.Control;
            this.groupBox3.Controls.Add(this.rtxAdres);
            this.groupBox3.Controls.Add(this.richTextAdres);
            this.groupBox3.Controls.Add(this.btnSil);
            this.groupBox3.Controls.Add(this.btnMusteriGuncelle);
            this.groupBox3.Controls.Add(this.btnMusteriEkle);
            this.groupBox3.Controls.Add(this.label6);
            this.groupBox3.Controls.Add(this.txtMusteriAdi);
            this.groupBox3.Controls.Add(this.label7);
            this.groupBox3.Controls.Add(this.txtSoyadi);
            this.groupBox3.Controls.Add(this.txtTelefon);
            this.groupBox3.Controls.Add(this.label8);
            this.groupBox3.Location = new System.Drawing.Point(12, 9);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(200, 470);
            this.groupBox3.TabIndex = 32;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "MÜŞTERİ EKLE";
            // 
            // rtxAdres
            // 
            this.rtxAdres.AutoSize = true;
            this.rtxAdres.Location = new System.Drawing.Point(6, 139);
            this.rtxAdres.Name = "rtxAdres";
            this.rtxAdres.Size = new System.Drawing.Size(37, 13);
            this.rtxAdres.TabIndex = 34;
            this.rtxAdres.Text = "Adres:";
            // 
            // richTextAdres
            // 
            this.richTextAdres.Location = new System.Drawing.Point(6, 156);
            this.richTextAdres.Name = "richTextAdres";
            this.richTextAdres.Size = new System.Drawing.Size(188, 178);
            this.richTextAdres.TabIndex = 33;
            this.richTextAdres.Text = "";
            // 
            // btnSil
            // 
            this.btnSil.Location = new System.Drawing.Point(119, 369);
            this.btnSil.Name = "btnSil";
            this.btnSil.Size = new System.Drawing.Size(75, 23);
            this.btnSil.TabIndex = 28;
            this.btnSil.Text = "Sil";
            this.btnSil.UseVisualStyleBackColor = true;
            this.btnSil.Click += new System.EventHandler(this.btnSil_Click);
            // 
            // btnMusteriGuncelle
            // 
            this.btnMusteriGuncelle.Location = new System.Drawing.Point(6, 369);
            this.btnMusteriGuncelle.Name = "btnMusteriGuncelle";
            this.btnMusteriGuncelle.Size = new System.Drawing.Size(75, 23);
            this.btnMusteriGuncelle.TabIndex = 27;
            this.btnMusteriGuncelle.Text = "Güncelle";
            this.btnMusteriGuncelle.UseVisualStyleBackColor = true;
            this.btnMusteriGuncelle.Click += new System.EventHandler(this.btnMusteriGuncelle_Click);
            // 
            // btnMusteriEkle
            // 
            this.btnMusteriEkle.Location = new System.Drawing.Point(6, 340);
            this.btnMusteriEkle.Name = "btnMusteriEkle";
            this.btnMusteriEkle.Size = new System.Drawing.Size(75, 23);
            this.btnMusteriEkle.TabIndex = 26;
            this.btnMusteriEkle.Text = "EKLE";
            this.btnMusteriEkle.UseVisualStyleBackColor = true;
            this.btnMusteriEkle.Click += new System.EventHandler(this.btnMusteriEkle_Click);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(6, 17);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(25, 13);
            this.label6.TabIndex = 20;
            this.label6.Text = "Adı:";
            // 
            // txtMusteriAdi
            // 
            this.txtMusteriAdi.Location = new System.Drawing.Point(9, 33);
            this.txtMusteriAdi.Name = "txtMusteriAdi";
            this.txtMusteriAdi.Size = new System.Drawing.Size(100, 20);
            this.txtMusteriAdi.TabIndex = 23;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(6, 55);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(42, 13);
            this.label7.TabIndex = 21;
            this.label7.Text = "Soyadı:";
            // 
            // txtSoyadi
            // 
            this.txtSoyadi.Location = new System.Drawing.Point(9, 71);
            this.txtSoyadi.Name = "txtSoyadi";
            this.txtSoyadi.Size = new System.Drawing.Size(100, 20);
            this.txtSoyadi.TabIndex = 24;
            // 
            // txtTelefon
            // 
            this.txtTelefon.Location = new System.Drawing.Point(9, 111);
            this.txtTelefon.Name = "txtTelefon";
            this.txtTelefon.Size = new System.Drawing.Size(100, 20);
            this.txtTelefon.TabIndex = 25;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(6, 95);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(46, 13);
            this.label8.TabIndex = 22;
            this.label8.Text = "Telefon:";
            // 
            // groupBox2
            // 
            this.groupBox2.BackColor = System.Drawing.SystemColors.Control;
            this.groupBox2.Controls.Add(this.btnTumunuOde);
            this.groupBox2.Controls.Add(this.label9);
            this.groupBox2.Controls.Add(this.txtOdeme);
            this.groupBox2.Controls.Add(this.btnOde);
            this.groupBox2.Location = new System.Drawing.Point(391, 19);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(227, 211);
            this.groupBox2.TabIndex = 31;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "BORÇ ÖDEME";
            // 
            // btnTumunuOde
            // 
            this.btnTumunuOde.Location = new System.Drawing.Point(15, 98);
            this.btnTumunuOde.Name = "btnTumunuOde";
            this.btnTumunuOde.Size = new System.Drawing.Size(206, 23);
            this.btnTumunuOde.TabIndex = 19;
            this.btnTumunuOde.Text = "Tümünü Öde";
            this.btnTumunuOde.UseVisualStyleBackColor = true;
            this.btnTumunuOde.Click += new System.EventHandler(this.btnTumunuOde_Click);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(12, 40);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(94, 13);
            this.label9.TabIndex = 16;
            this.label9.Text = "Ödeme Miktarı Gir:";
            // 
            // txtOdeme
            // 
            this.txtOdeme.Location = new System.Drawing.Point(15, 56);
            this.txtOdeme.Name = "txtOdeme";
            this.txtOdeme.Size = new System.Drawing.Size(100, 20);
            this.txtOdeme.TabIndex = 17;
            this.txtOdeme.Text = "0";
            // 
            // btnOde
            // 
            this.btnOde.Location = new System.Drawing.Point(121, 56);
            this.btnOde.Name = "btnOde";
            this.btnOde.Size = new System.Drawing.Size(100, 23);
            this.btnOde.TabIndex = 18;
            this.btnOde.Text = "ÖDE";
            this.btnOde.UseVisualStyleBackColor = true;
            this.btnOde.Click += new System.EventHandler(this.btnOde_Click);
            // 
            // btnBorcEkle
            // 
            this.btnBorcEkle.Location = new System.Drawing.Point(21, 160);
            this.btnBorcEkle.Name = "btnBorcEkle";
            this.btnBorcEkle.Size = new System.Drawing.Size(170, 23);
            this.btnBorcEkle.TabIndex = 18;
            this.btnBorcEkle.Text = "EKLE";
            this.btnBorcEkle.UseVisualStyleBackColor = true;
            this.btnBorcEkle.Click += new System.EventHandler(this.btnBorcEkle_Click);
            // 
            // dateOdemeTarihi
            // 
            this.dateOdemeTarihi.Location = new System.Drawing.Point(21, 125);
            this.dateOdemeTarihi.Name = "dateOdemeTarihi";
            this.dateOdemeTarihi.Size = new System.Drawing.Size(170, 20);
            this.dateOdemeTarihi.TabIndex = 19;
            // 
            // txtBorc
            // 
            this.txtBorc.Location = new System.Drawing.Point(21, 81);
            this.txtBorc.Name = "txtBorc";
            this.txtBorc.Size = new System.Drawing.Size(170, 20);
            this.txtBorc.TabIndex = 17;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(18, 110);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(73, 13);
            this.label5.TabIndex = 15;
            this.label5.Text = "Ödeme Tarihi:";
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.SystemColors.Control;
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.txtMusteriAra);
            this.groupBox1.Controls.Add(this.btnBorcEkle);
            this.groupBox1.Controls.Add(this.dateOdemeTarihi);
            this.groupBox1.Controls.Add(this.txtBorc);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Location = new System.Drawing.Point(382, 17);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(245, 200);
            this.groupBox1.TabIndex = 30;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "BORÇ GİRİŞİ";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(18, 19);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(78, 13);
            this.label1.TabIndex = 21;
            this.label1.Text = "Müşteri Adı Ara";
            // 
            // txtMusteriAra
            // 
            this.txtMusteriAra.Location = new System.Drawing.Point(21, 38);
            this.txtMusteriAra.Name = "txtMusteriAra";
            this.txtMusteriAra.Size = new System.Drawing.Size(170, 20);
            this.txtMusteriAra.TabIndex = 20;
            this.txtMusteriAra.TextChanged += new System.EventHandler(this.txtMusteriAra_TextChanged);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(18, 65);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(62, 13);
            this.label4.TabIndex = 16;
            this.label4.Text = "Borç Tutarı:";
            // 
            // dgvMusteri
            // 
            this.dgvMusteri.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvMusteri.Location = new System.Drawing.Point(0, 17);
            this.dgvMusteri.Name = "dgvMusteri";
            this.dgvMusteri.Size = new System.Drawing.Size(376, 200);
            this.dgvMusteri.TabIndex = 28;
            this.dgvMusteri.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvMusteri_CellDoubleClick);
            // 
            // dgvBorc
            // 
            this.dgvBorc.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvBorc.Location = new System.Drawing.Point(9, 19);
            this.dgvBorc.Name = "dgvBorc";
            this.dgvBorc.Size = new System.Drawing.Size(376, 214);
            this.dgvBorc.TabIndex = 29;
            // 
            // groupBox4
            // 
            this.groupBox4.BackColor = System.Drawing.SystemColors.Control;
            this.groupBox4.Controls.Add(this.groupBox2);
            this.groupBox4.Controls.Add(this.dgvBorc);
            this.groupBox4.Location = new System.Drawing.Point(218, 232);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(627, 247);
            this.groupBox4.TabIndex = 33;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "Borç Bilgileri";
            // 
            // groupBox5
            // 
            this.groupBox5.BackColor = System.Drawing.SystemColors.Control;
            this.groupBox5.Controls.Add(this.groupBox1);
            this.groupBox5.Controls.Add(this.dgvMusteri);
            this.groupBox5.Location = new System.Drawing.Point(218, 9);
            this.groupBox5.Name = "groupBox5";
            this.groupBox5.Size = new System.Drawing.Size(627, 219);
            this.groupBox5.TabIndex = 34;
            this.groupBox5.TabStop = false;
            this.groupBox5.Text = "Müşteriler";
            // 
            // frmMusteriler
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(854, 473);
            this.Controls.Add(this.groupBox5);
            this.Controls.Add(this.groupBox4);
            this.Controls.Add(this.groupBox3);
            this.Name = "frmMusteriler";
            this.Text = "e";
            this.Load += new System.EventHandler(this.frmMusteriler_Load);
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvMusteri)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvBorc)).EndInit();
            this.groupBox4.ResumeLayout(false);
            this.groupBox5.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Button btnSil;
        private System.Windows.Forms.Button btnMusteriGuncelle;
        private System.Windows.Forms.Button btnMusteriEkle;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtMusteriAdi;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtSoyadi;
        private System.Windows.Forms.TextBox txtTelefon;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btnTumunuOde;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox txtOdeme;
        private System.Windows.Forms.Button btnOde;
        private System.Windows.Forms.Button btnBorcEkle;
        private System.Windows.Forms.DateTimePicker dateOdemeTarihi;
        private System.Windows.Forms.TextBox txtBorc;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.DataGridView dgvMusteri;
        private System.Windows.Forms.DataGridView dgvBorc;
        private System.Windows.Forms.Label rtxAdres;
        private System.Windows.Forms.RichTextBox richTextAdres;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtMusteriAra;
        private System.Windows.Forms.GroupBox groupBox5;
    }
}