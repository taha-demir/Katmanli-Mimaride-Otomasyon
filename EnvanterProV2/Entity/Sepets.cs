using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnvanterProV2.Entity
{
    public class Sepets
    {
        public Sepets()
        {
            Aktif = true;
            Tarih = DateTime.Now;
        }
        public int SepetID { get; set; }
        public int UrunID { get; set; }
        public decimal Miktar { get; set; }
        public decimal ToplamFiyat { get; set; }
        public DateTime Tarih { get; set; }
        public bool Aktif { get; set; }
    }
}
