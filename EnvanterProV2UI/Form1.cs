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
    public partial class frmAnaSayfa : Form
    {
        public frmAnaSayfa()
        {
            InitializeComponent();
        }
        UrunlerORM urunlerORM = new UrunlerORM();
        MusteriORM musteriORM = new MusteriORM();
        SepetORM sepetORM = new SepetORM();
        SatisORM satisORM = new SatisORM();
        Satis satis = new Satis();
        Sepets sepets = new Sepets();
        private void frmAnaSayfa_Load(object sender, EventArgs e)
        {
            UrunListele();
            MusteriListele();
            SepetListele();
        }

        private void SepetListele()
        {
            dgvSepet.DataSource = sepetORM.Select();
            dgvSepet.Columns["UrunID"].Visible = false;
            dgvSepet.Columns["Aktif"].Visible = false;
        }

        private void MusteriListele()
        {
            dgvMusteri.DataSource = musteriORM.Select();
            dgvMusteri.Columns["Aktif"].Visible = false;
        }

        private void UrunListele()
        {
            dgvUrunler.DataSource = urunlerORM.Select();
            dgvUrunler.Columns["Aktif"].Visible = false;
            dgvUrunler.Columns["TedarikciID"].Visible = false;
            dgvUrunler.Columns["KategoriID"].Visible = false;
            dgvUrunler.Columns["MarkaID"].Visible = false;
            dgvUrunler.Columns["AlisFiyati"].Visible = false;
        }

        private void kategorilerToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmKategoriler frmKategoriler = new frmKategoriler();
            frmKategoriler.ShowDialog();
        }

        private void markalarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmMarkalar frmMarkalar = new frmMarkalar();
            frmMarkalar.ShowDialog();
        }

        private void tedarikçilerToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmTedarikciler frmTedarikciler = new frmTedarikciler();
            frmTedarikciler.ShowDialog();
        }

        private void ürünlerToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmUrunler frmUrunler = new frmUrunler();
            frmUrunler.ShowDialog();
        }

        private void txtUrunAra_TextChanged(object sender, EventArgs e)
        {
            dgvUrunler.DataSource = urunlerORM.OzelAra(txtUrunAra.Text);
        }

        private void txtMusteriAra_TextChanged(object sender, EventArgs e)
        {
            dgvMusteri.DataSource = musteriORM.OzelAra(txtMusteriAra.Text);
        }

        private void müşterilerToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmMusteriler frmMusteriler = new frmMusteriler();
            frmMusteriler.ShowDialog();
        }

        private void dgvUrunler_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            txtBarkodNo.Text = dgvUrunler.CurrentRow.Cells["UrunID"].Value.ToString();
            decimal satisFiyati = (decimal)dgvUrunler.CurrentRow.Cells["SatisFiyati"].Value;
            decimal miktar = (decimal)dgvUrunler.CurrentRow.Cells["Miktar"].Value;
            txtSatisFiyati.Text = satisFiyati.ToString();
            txtUrunAdi.Text = dgvUrunler.CurrentRow.Cells["UrunAdi"].Value.ToString();
            txtToplam.Text = (miktar * satisFiyati).ToString();
            txtMiktar.Enabled = true;
        }

        private void btnEkle_Click(object sender, EventArgs e)
        {
            sepets.Miktar = Convert.ToDecimal(txtMiktar.Text);
            sepets.UrunID = Convert.ToInt32(txtBarkodNo.Text);
            decimal satisFiyati = Convert.ToDecimal(txtSatisFiyati.Text);
            txtToplam.Text = (sepets.Miktar * satisFiyati).ToString();
            sepets.ToplamFiyat = sepets.Miktar * satisFiyati;
            if (sepets.Miktar <= (decimal)dgvUrunler.CurrentRow.Cells["Miktar"].Value)
            {
                sepetORM.Insert(sepets);
                SepetListele();
                MessageBox.Show("Sepete Eklendi");
            }
            else
            {
                MessageBox.Show("Yetersiz Stok");
            }
        }

        private void txtMiktar_TextChanged(object sender, EventArgs e)
        {
            decimal satisFiyati = Convert.ToDecimal(txtSatisFiyati.Text);
            decimal miktar = 1;
            if (txtMiktar.Text != "")
            {
                miktar = Convert.ToDecimal(txtMiktar.Text);
            }
            else
            {
                miktar = 0;
            }
            txtToplam.Text = (satisFiyati * miktar).ToString();
        }

        private void btnSatisYap_Click(object sender, EventArgs e)
        {
            foreach (DataGridViewRow item in dgvSepet.Rows)
            {
                if (item.Cells["SepetID"].Value == null)
                {
                    break;
                }
                sepets.SepetID = (int)item.Cells["SepetID"].Value;
                satis.Miktar = (decimal)item.Cells["Miktar"].Value;
                satis.MusteriID = (int)dgvMusteri.CurrentRow.Cells["MusteriID"].Value;
                satis.ToplamFiyat = (decimal)item.Cells["ToplamFiyat"].Value;
                satis.UrunID = (int)item.Cells["UrunID"].Value;
                satisORM.Insert(satis);
                sepetORM.Delete(sepets);
            }
            MessageBox.Show("Satış Gerçekleşti");
            SepetListele();
            UrunListele();
        }

        private void silToolStripMenuItem_Click(object sender, EventArgs e)
        {
            sepets.SepetID = (int)dgvSepet.CurrentRow.Cells["SepetID"].Value;
            sepetORM.Delete(sepets);
            SepetListele();
            MessageBox.Show("Silindi");
        }

        private void satışlarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmSatislar frmSatislar = new frmSatislar();
            frmSatislar.ShowDialog();
        }
    }
}
