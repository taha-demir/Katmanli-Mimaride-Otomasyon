using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnvanterProV2
{
    public class ORMBase<T> : IORM<T> where T : class
    {

        private string SinifAdi
        {
            get
            {
                return typeof(T).Name;
            }
        }

        public bool Delete(T entity)
        {
            SqlCommand command = new SqlCommand(string.Format("prc_{0}_Delete", SinifAdi), Tools.baglanti);
            command.CommandType = CommandType.StoredProcedure;
            Tools.ParametreOlustur<T>(command, KomutTip.Delete, entity);
            return Tools.Exec(command);
        }

        public bool Insert(T entity)
        {
            SqlCommand command = new SqlCommand(string.Format("prc_{0}_Insert", SinifAdi), Tools.baglanti);
            command.CommandType = CommandType.StoredProcedure;
            Tools.ParametreOlustur<T>(command, KomutTip.Insert, entity);
            return Tools.Exec(command);
        }
        DataTable dataTable = new DataTable();
        public DataTable Select()
        {
            SqlDataAdapter adp = new SqlDataAdapter(string.Format("prc_{0}_Select", SinifAdi), Tools.baglanti);
            adp.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataTable = new DataTable();
            adp.Fill(dataTable);
            return dataTable;
        }

        public bool Update(T entity)
        {
            SqlCommand command = new SqlCommand(string.Format("prc_{0}_Update", SinifAdi), Tools.baglanti);
            command.CommandType = CommandType.StoredProcedure;
            Tools.ParametreOlustur<T>(command, KomutTip.Update, entity);
            return Tools.Exec(command);
        }

        public DataTable OzelAra(string aramaSozcugu)
        {
            SqlDataAdapter adp = new SqlDataAdapter(string.Format("prc_{0}_Ara", SinifAdi), Tools.baglanti);
            adp.SelectCommand.CommandType = CommandType.StoredProcedure;
            adp.SelectCommand.Parameters.AddWithValue("@aramaSozcugu", aramaSozcugu);
            dataTable = new DataTable();
            adp.Fill(dataTable);
            return dataTable;
        }
    }
}
