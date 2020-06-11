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
    public partial class frmKategoriler : Form
    {
        public frmKategoriler()
        {
            InitializeComponent();
        }
        KategorilerORM kategorilerORM = new KategorilerORM();
        Kategorilers kategorilers = new Kategorilers();
        private void frmKategoriler_Load(object sender, EventArgs e)
        {
            KategoriListele();
        }

        private void KategoriListele()
        {
            dgvKategoriler.DataSource = kategorilerORM.Select();
            dgvKategoriler.Columns["Aktif"].Visible = false;
        }

        private void btnEkle_Click(object sender, EventArgs e)
        {
            kategorilers.KategoriAdi = txtKategoriAdi.Text;
            kategorilerORM.Insert(kategorilers);
            KategoriListele();
            MessageBox.Show("Eklendi");
        }

        private void btnGuncelle_Click(object sender, EventArgs e)
        {
            kategorilers.KategoriID = Convert.ToInt32(dgvKategoriler.CurrentRow.Cells["KategoriID"].Value);
            kategorilers.KategoriAdi = txtKategoriAdi.Text;
            kategorilerORM.Update(kategorilers);
            KategoriListele();
            MessageBox.Show("Güncellendi");
        }

        private void dgvKategoriler_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            txtKategoriAdi.Text = dgvKategoriler.CurrentRow.Cells["KategoriAdi"].Value.ToString();
        }

        private void btnSil_Click(object sender, EventArgs e)
        {
            kategorilers.KategoriID = Convert.ToInt32(dgvKategoriler.CurrentRow.Cells["KategoriID"].Value);
            kategorilerORM.Delete(kategorilers);
            KategoriListele();
            MessageBox.Show("Silindi");
        }
    }
}
