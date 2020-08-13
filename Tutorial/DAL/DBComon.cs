using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public static class DBComon
    {
        private static string comn = @"Data Source=.;Initial Catalog=Ventas;Integrated Security=True";
        
        public static IDbConnection Conexion()
        {
            return new SqlConnection(comn);
        }
        public static IDbCommand ObtenerComando(string pCommand, IDbConnection pCnn)
        {
            return new SqlCommand(pCommand, pCnn as SqlConnection);
        }
    }
}
