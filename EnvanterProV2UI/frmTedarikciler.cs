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
    public partial class frmTedarikciler : Form
    {
        public frmTedarikciler()
        {
            InitializeComponent();
        }
        TedarikcilerORM tedarikcilerORM = new TedarikcilerORM();
        Tedarikcilers tedarikcilers = new Tedarikcilers();
        private void frmTedarikciler_Load(object sender, EventArgs e)
        {
            TedarikciListele();
        }

        private void TedarikciListele()
        {
            dgvTedarikciler.DataSource = tedarikcilerORM.Select();
            dgvTedarikciler.Columns["Aktif"].Visible = false;
        }

        private void btnEkle_Click(object sender, EventArgs e)
        {
            tedarikcilers.Adres = rtxtAdres.Text;
            tedarikcilers.TedarikciAdi = txtAdi.Text;
            tedarikcilers.TedarikciSoyadi = txtSoyadi.Text;
            tedarikcilers.Mail = txtMail.Text;
            tedarikcilers.TelNo = txtTel.Text;
            tedarikcilerORM.Insert(tedarikcilers);
            TedarikciListele();
            MessageBox.Show("Eklendi");
        }

        private void dgvTedarikciler_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            txtTel.Text = dgvTedarikciler.CurrentRow.Cells["TelNo"].Value.ToString();
            txtAdi.Text = dgvTedarikciler.CurrentRow.Cells["TedarikciAdi"].Value.ToString();
            txtSoyadi.Text = dgvTedarikciler.CurrentRow.Cells["TedarikciSoyadi"].Value.ToString();
            rtxtAdres.Text = dgvTedarikciler.CurrentRow.Cells["Adres"].Value.ToString();
            txtMail.Text = dgvTedarikciler.CurrentRow.Cells["Mail"].Value.ToString();
        }

        private void btnGuncelle_Click(object sender, EventArgs e)
        {
            tedarikcilers.TedarikciID = (int)dgvTedarikciler.CurrentRow.Cells["TedarikciID"].Value;
            tedarikcilers.Adres = rtxtAdres.Text;
            tedarikcilers.TedarikciAdi = txtAdi.Text;
            tedarikcilers.TedarikciSoyadi = txtSoyadi.Text;
            tedarikcilers.Mail = txtMail.Text;
            tedarikcilers.TelNo = txtTel.Text;
            tedarikcilerORM.Update(tedarikcilers);
            TedarikciListele();
            MessageBox.Show("Güncellendi");
        }

        private void btnSil_Click(object sender, EventArgs e)
        {
            tedarikcilers.TedarikciID = (int)dgvTedarikciler.CurrentRow.Cells["TedarikciID"].Value;
            tedarikcilerORM.Delete(tedarikcilers);
            TedarikciListele();
            MessageBox.Show("Silindi");
        }
    }
}
