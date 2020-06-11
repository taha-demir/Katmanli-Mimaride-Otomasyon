using EnvanterProV2;
using EnvanterProV2.Entity;
using EnvanterProV2.Facade;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace EnvanterProV2UI
{
    public partial class frmUrunler : Form
    {
        public frmUrunler()
        {
            InitializeComponent();
        }
        UrunlerORM urunlerORM = new UrunlerORM();
        KategorilerORM kategorilerORM = new KategorilerORM();
        TedarikcilerORM tedarikcilerORM = new TedarikcilerORM();
        MarkalarORM markalarORM = new MarkalarORM();
        Urunlers urunlers = new Urunlers();
        private void frmUrunler_Load(object sender, EventArgs e)
        {
            UrunListele();
            ComboBoxKategoriListele();
            ComboBoxTedarikciListele();
            ComboBoxMarkaListele();
        }

        private void ComboBoxMarkaListele()
        {
            cmbMarka.DataSource = markalarORM.Select();
            cmbMarka.DisplayMember = "MarkaAdi";
            cmbMarka.ValueMember = "MarkaID";
        }

        private void ComboBoxTedarikciListele()
        {
            cmbTedarikci.DataSource = tedarikcilerORM.Select();
            cmbTedarikci.DisplayMember = "TedarikciAdi";
            cmbTedarikci.ValueMember = "TedarikciID";
        }

        private void ComboBoxKategoriListele()
        {
            cmbKategori.DataSource = kategorilerORM.Select();
            cmbKategori.DisplayMember = "KategoriAdi";
            cmbKategori.ValueMember = "KategoriID";
        }

        private void UrunListele()
        {
            dgvUrunler.DataSource = urunlerORM.Select();
            dgvUrunler.Columns["Aktif"].Visible = false;
            dgvUrunler.Columns["KategoriID"].Visible = false;
            dgvUrunler.Columns["MarkaID"].Visible = false;
            dgvUrunler.Columns["TedarikciID"].Visible = false;
        }

        private void txtUrunAra_TextChanged(object sender, EventArgs e)
        {
            dgvUrunler.DataSource = urunlerORM.OzelAra(txtUrunAra.Text);
        }

        private void btnEkle_Click(object sender, EventArgs e)
        {
            urunlers.AlisFiyati = Convert.ToDecimal(txtAlisFiyati.Text);
            urunlers.SatisFiyati = Convert.ToDecimal(txtSatisFiyati.Text);
            urunlers.UrunAdi = txtUrunAdi.Text;
            urunlers.TedarikciID = (int)cmbTedarikci.SelectedValue;
            urunlers.KategoriID = (int)cmbKategori.SelectedValue;
            urunlers.MarkaID = (int)cmbMarka.SelectedValue;
            urunlers.Miktar = Convert.ToDecimal(txtMiktar.Text);
            urunlerORM.Insert(urunlers);
            UrunListele();
            MessageBox.Show("Eklendi");
        }

        private void btnGuncelle_Click(object sender, EventArgs e)
        {
            urunlers.UrunID= (int)dgvUrunler.CurrentRow.Cells["UrunID"].Value;
            urunlers.AlisFiyati = Convert.ToDecimal(txtAlisFiyati.Text);
            urunlers.SatisFiyati = Convert.ToDecimal(txtSatisFiyati.Text);
            urunlers.UrunAdi = txtUrunAdi.Text;
            urunlers.TedarikciID = (int)cmbTedarikci.SelectedValue;
            urunlers.KategoriID = (int)cmbKategori.SelectedValue;
            urunlers.MarkaID = (int)cmbMarka.SelectedValue;
            urunlers.Miktar = Convert.ToDecimal(txtMiktar.Text);
            urunlerORM.Update(urunlers);
            UrunListele();
            MessageBox.Show("Güncellendi");
        }

        private void dgvUrunler_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            txtAlisFiyati.Text = dgvUrunler.CurrentRow.Cells["AlisFiyati"].Value.ToString();
            txtSatisFiyati.Text= dgvUrunler.CurrentRow.Cells["SatisFiyati"].Value.ToString();
            txtMiktar.Text= dgvUrunler.CurrentRow.Cells["Miktar"].Value.ToString();
            txtUrunAdi.Text= dgvUrunler.CurrentRow.Cells["UrunAdi"].Value.ToString();
            cmbKategori.SelectedValue = (int)dgvUrunler.CurrentRow.Cells["KategoriID"].Value;
            cmbTedarikci.SelectedValue= (int)dgvUrunler.CurrentRow.Cells["TedarikciID"].Value;
            cmbMarka.SelectedValue= (int)dgvUrunler.CurrentRow.Cells["MarkaID"].Value;
        }

        private void btnSil_Click(object sender, EventArgs e)
        {
            urunlers.UrunID = (int)dgvUrunler.CurrentRow.Cells["UrunID"].Value;
            urunlerORM.Delete(urunlers);
            UrunListele();
            MessageBox.Show("Silindi");
        }
    }
}
