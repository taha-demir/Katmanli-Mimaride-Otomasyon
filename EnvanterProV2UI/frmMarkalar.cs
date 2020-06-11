using EnvanterProV2.Entity;
using EnvanterProV2.Facade;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace EnvanterProV2UI
{
    public partial class frmMarkalar : Form
    {
        public frmMarkalar()
        {
            InitializeComponent();
        }
        MarkalarORM markalarORM = new MarkalarORM();
        KategorilerORM kategorilerORM = new KategorilerORM();
        Markalars markalars = new Markalars();
        private void frmMarkalar_Load(object sender, EventArgs e)
        {
            MarkaListele();
            cmbKategori.DataSource = kategorilerORM.Select();
            cmbKategori.DisplayMember = "KategoriAdi";
            cmbKategori.ValueMember = "KategoriID";
        }

        private void MarkaListele()
        {
            dgvMarkalar.DataSource = markalarORM.Select();
            dgvMarkalar.Columns["Aktif"].Visible = false;
            dgvMarkalar.Columns["KategoriID"].Visible = false;
        }

        private void btnEkle_Click(object sender, EventArgs e)
        {
            markalars.MarkaAdi = txtAdi.Text;
            markalars.KategoriID = (int)cmbKategori.SelectedValue;
            markalarORM.Insert(markalars);
            MarkaListele();
            MessageBox.Show("Eklendi");
        }

        private void dgvMarkalar_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            txtAdi.Text = dgvMarkalar.CurrentRow.Cells["MarkaAdi"].Value.ToString();
            cmbKategori.SelectedValue = (int)dgvMarkalar.CurrentRow.Cells["KategoriID"].Value;
        }

        private void btnGuncelle_Click(object sender, EventArgs e)
        {
            markalars.MarkaID = (int)dgvMarkalar.CurrentRow.Cells["MarkaID"].Value;
            markalars.MarkaAdi = txtAdi.Text;
            markalars.KategoriID = (int)cmbKategori.SelectedValue;
            markalarORM.Update(markalars);
            MarkaListele();
            MessageBox.Show("Güncellendi");
        }

        private void btnSil_Click(object sender, EventArgs e)
        {
            markalars.MarkaID = (int)dgvMarkalar.CurrentRow.Cells["MarkaID"].Value;
            markalarORM.Delete(markalars);
            markalarORM.Update(markalars);
            MarkaListele();
            MessageBox.Show("Silindi");
        }
    }
}
