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
    public partial class frmSatislar : Form
    {
        public frmSatislar()
        {
            InitializeComponent();
        }
        SatisORM satisORM = new SatisORM();
        private void frmSatislar_Load(object sender, EventArgs e)
        {
            dataGridSatislar.DataSource = satisORM.Select();
            dataGridSatislar.Columns["MusteriID"].Visible = false;
            dataGridSatislar.Columns["UrunID"].Visible = false;
            dataGridSatislar.Columns["Aktif"].Visible = false;
        }

        private void txtMusteriAra_TextChanged(object sender, EventArgs e)
        {
            dataGridSatislar.DataSource = satisORM.OzelAra(txtMusteriAra.Text);
        }
    }
}
