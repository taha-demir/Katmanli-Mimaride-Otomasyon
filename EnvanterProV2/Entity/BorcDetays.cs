using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnvanterProV2.Entity
{
    public class BorcDetays
    {
        public BorcDetays()
        {
            Aktif = true;
            Tarih = DateTime.Now;
        }
        public int BorcDetayID { get; set; }
        public int MusteriID { get; set; }
        public decimal Borc { get; set; }
        public DateTime Tarih { get; set; }
        public DateTime OdemeTarihi { get; set; }
        public bool Aktif { get; set; }
    }
}
