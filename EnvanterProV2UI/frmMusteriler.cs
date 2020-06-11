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
    public partial class frmMusteriler : Form
    {
        public frmMusteriler()
        {
            InitializeComponent();
        }
        MusteriORM musteriORM = new MusteriORM();
        BorcDetayORM borcDetayORM = new BorcDetayORM();
        Musteris musteris = new Musteris();
        BorcDetays borcDetays = new BorcDetays();
        private void frmMusteriler_Load(object sender, EventArgs e)
        {
            MusteriListele();
            BorcListele();
        }

        private void BorcListele()
        {
            dgvBorc.DataSource = borcDetayORM.Select();
            dgvBorc.Columns["Aktif"].Visible = false;
            dgvBorc.Columns["MusteriID"].Visible = false;
        }

        private void MusteriListele()
        {
            dgvMusteri.DataSource = musteriORM.Select();
            dgvMusteri.Columns["Aktif"].Visible = false;
        }

        private void btnMusteriEkle_Click(object sender, EventArgs e)
        {
            musteris.Ad = txtMusteriAdi.Text;
            musteris.Soyad = txtSoyadi.Text;
            musteris.TelNo = txtTelefon.Text;
            musteris.Adres = richTextAdres.Text;
            musteriORM.Insert(musteris);
            MusteriListele();
            MessageBox.Show("Müşteri Eklendi");
        }

        private void btnMusteriGuncelle_Click(object sender, EventArgs e)
        {
            musteris.MusteriID = (int)dgvMusteri.CurrentRow.Cells["MusteriID"].Value;
            musteris.Ad = txtMusteriAdi.Text;
            musteris.Soyad = txtSoyadi.Text;
            musteris.TelNo = txtTelefon.Text;
            musteris.Adres = richTextAdres.Text;
            musteriORM.Update(musteris);
            MusteriListele();
            MessageBox.Show("Müşteri Güncellendi");
        }

        private void dgvMusteri_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            txtMusteriAdi.Text = dgvMusteri.CurrentRow.Cells["Ad"].Value.ToString();
            txtSoyadi.Text = dgvMusteri.CurrentRow.Cells["Soyad"].Value.ToString();
            txtTelefon.Text = dgvMusteri.CurrentRow.Cells["TelNo"].Value.ToString();
            richTextAdres.Text = dgvMusteri.CurrentRow.Cells["Adres"].Value.ToString();
        }

        private void btnSil_Click(object sender, EventArgs e)
        {
            musteris.MusteriID = (int)dgvMusteri.CurrentRow.Cells["MusteriID"].Value;
            musteriORM.Delete(musteris);
            MusteriListele();
            MessageBox.Show("Müşteri Silindi");
        }

        private void txtMusteriAra_TextChanged(object sender, EventArgs e)
        {
            dgvMusteri.DataSource = musteriORM.OzelAra(txtMusteriAra.Text);
        }

        private void btnBorcEkle_Click(object sender, EventArgs e)
        {
            borcDetays.Borc = Convert.ToDecimal(txtBorc.Text);
            borcDetays.OdemeTarihi = dateOdemeTarihi.Value;
            borcDetays.MusteriID = (int)dgvMusteri.CurrentRow.Cells["MusteriID"].Value;
            borcDetayORM.Insert(borcDetays);
            BorcListele();
            MessageBox.Show("Borç Eklendi");
        }

        private void btnOde_Click(object sender, EventArgs e)
        {
            decimal odemeMiktari = Convert.ToDecimal(txtOdeme.Text);
            decimal borcMiktari = (decimal)dgvBorc.CurrentRow.Cells["Borc"].Value;
            borcDetays.BorcDetayID= (int)dgvBorc.CurrentRow.Cells["BorcDetayID"].Value;
            borcDetays.Borc = borcMiktari - odemeMiktari;
            borcDetays.OdemeTarihi = Convert.ToDateTime(dgvBorc.CurrentRow.Cells["OdemeTarihi"].Value);
            borcDetays.MusteriID = (int)dgvBorc.CurrentRow.Cells["MusteriID"].Value;
            borcDetayORM.Update(borcDetays);
            BorcListele();
            MessageBox.Show("Borç Ödendi");
        }

        private void btnTumunuOde_Click(object sender, EventArgs e)
        {
            borcDetays.BorcDetayID = (int)dgvBorc.CurrentRow.Cells["BorcDetayID"].Value;
            borcDetays.Borc = 0;
            borcDetays.OdemeTarihi = Convert.ToDateTime(dgvBorc.CurrentRow.Cells["OdemeTarihi"].Value);
            borcDetays.MusteriID = (int)dgvBorc.CurrentRow.Cells["MusteriID"].Value;
            borcDetayORM.Update(borcDetays);
            BorcListele();
            MessageBox.Show("Borç Ödendi");
        }
    }
}
