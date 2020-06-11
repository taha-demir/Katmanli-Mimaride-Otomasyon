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
    public interface IORM<T> where T : class
    {
        DataTable Select();
        DataTable OzelAra(string aramaSozcugu);
        bool Insert(T entity);
        bool Update(T entity);
        bool Delete(T entity);
    }
}
