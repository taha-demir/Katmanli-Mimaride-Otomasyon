using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnvanterProV2.Entity
{
    public class Tedarikcilers
    {
        public Tedarikcilers()
        {
            Aktif = true;
        }
        public int TedarikciID { get; set; }
        public string TedarikciAdi { get; set; }
        public string TedarikciSoyadi { get; set; }
        public string TelNo { get; set; }
        public string Adres { get; set; }
        public string Mail { get; set; }
        public bool Aktif { get; set; }
    }
}
