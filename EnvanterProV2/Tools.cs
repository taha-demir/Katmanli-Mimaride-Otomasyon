using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace EnvanterProV2
{
    public class Tools
    {
        private static SqlConnection _baglanti;

        public static SqlConnection baglanti
        {
            get
            {
                if (_baglanti == null)
                    _baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["Baglanti"].ConnectionString);
                return _baglanti;
            }
        }
        public static bool Exec(SqlCommand cmd)
        {
            try
            {
                if (cmd.Connection.State != ConnectionState.Open)
                    cmd.Connection.Open();
                int etk = cmd.ExecuteNonQuery();
                return etk > 0 ? true : false;
            }
            catch (Exception)
            {
                return false;
            }
            finally
            {
                if (cmd.Connection.State != ConnectionState.Closed)
                    cmd.Connection.Close();
            }
        }
        public static void ParametreOlustur<T>(SqlCommand cmd, KomutTip kt, T ent)
        {
            PropertyInfo[] propertiler = typeof(T).GetProperties();
            int sayac = 0;
            foreach (PropertyInfo pi in propertiler)
            {
                sayac++;
                string name = pi.Name;
                //Tablodaki ilk sütun Identity olmak zorunda. 
                if (sayac == 1 && kt == KomutTip.Insert) //sayac==1 gelen ilk property'yi belirtiyor.
                {
                    continue;
                }
                else if (sayac != 1 && kt == KomutTip.Delete)
                {
                    continue;
                }
                object value = pi.GetValue(ent);
                cmd.Parameters.AddWithValue("@" + name, value);
            }
        }
    }
}
