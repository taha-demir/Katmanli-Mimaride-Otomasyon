using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnvanterProV2.Entity
{
    public class Markalars
    {
        public Markalars()
        {
            Aktif = true;
        }
        public int MarkaID { get; set; }
        public string MarkaAdi { get; set; }
        public int KategoriID { get; set; }
        public bool Aktif { get; set; }
    }
}
