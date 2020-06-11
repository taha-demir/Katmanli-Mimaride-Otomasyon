using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnvanterProV2.Entity
{
    public class Urunlers
    {
        public Urunlers()
        {
            Aktif = true;
        }
        public int UrunID { get; set; }
        public int KategoriID { get; set; }
        public int MarkaID { get; set; }
        public int TedarikciID { get; set; }
        public string UrunAdi { get; set; }
        public decimal Miktar { get; set; }
        public decimal AlisFiyati { get; set; }
        public decimal SatisFiyati { get; set; }
        public bool Aktif { get; set; }
    }
}
