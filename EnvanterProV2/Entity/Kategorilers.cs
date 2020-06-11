using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnvanterProV2.Entity
{
    public class Kategorilers
    {
        public Kategorilers()
        {
            Aktif = true;
        }
        public int KategoriID { get; set; }
        public string KategoriAdi { get; set; }
        public bool Aktif { get; set; }
    }
}
