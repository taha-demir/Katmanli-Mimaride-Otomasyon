using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnvanterProV2.Entity
{
    public class Musteris
    {
        public Musteris()
        {
            Aktif = true;
        }
        public int MusteriID { get; set; }
        public string Ad { get; set; }
        public string Soyad { get; set; }
        public string TelNo { get; set; }
        public string Adres { get; set; }
        public bool Aktif { get; set; }
    }
}
