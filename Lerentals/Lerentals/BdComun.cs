using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Lerentals
{
    public class BdComun
    {
        public static SqlConnection ObtenerConexion()
        {

            SqlConnection conectar = new SqlConnection("Data Source=den1.mssql7.gear.host;Initial Catalog=inmobiliarias;User Id=inmobiliarias;Password=Aw8vDVcw_aJ-");

            conectar.Open();

            return conectar;
        }
    }
}