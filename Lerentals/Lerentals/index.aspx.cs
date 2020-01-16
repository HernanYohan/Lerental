using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace Lerentals
{
    public partial class index : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        private void iniciarLlenadoDropDwon()
        {

            DDL_Pais.DataSource = Consultar("SELECT * from tbl_pais");
            DDL_Pais.DataTextField = "nombre_pais";
            DDL_Pais.DataValueField = "id_pais";
            DDL_Pais.DataBind();
            DDL_Pais.Items.Insert(0, new ListItem("[Pais ?]", "0"));
            DDL_CIUDAD.Items.Insert(0, new ListItem("[Ciudad ?]", "0"));
        }

        private void MensajeBox(string pvStrMsj)
        {
            string script = "<script language=\"javascript\">alert('" + pvStrMsj + "');</script>";
            ScriptManager.RegisterClientScriptBlock(Page, GetType(), "OK", script, false);
        }
             protected void ASPxButton1_Click1(object sender, EventArgs e)
        {
            if (tipo_actividad.SelectedIndex > 0 && tipo_inmueble.SelectedIndex > 0 && DDL_Pais.SelectedIndex > 0 )
            {
                Session["tipo_inmueble"] = this.tipo_inmueble.SelectedItem.Text;
                Session["tipo_actividad"] = this.tipo_actividad.SelectedItem.Text;
                Session["proyecto_cuidad"] = this.DDL_CIUDAD.SelectedItem.Text;
                Session["proyecto_pais"] = this.DDL_Pais.SelectedItem.Text;
                Response.Redirect("Default.aspx");
            }
            else
            {

                string script = "alert('Seleccione una Opcion...');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
                return;

            }
        }

     
        protected void BTN_Registrarse_Click1(object sender, EventArgs e)
        {
            Response.Redirect("registro.aspx");
        }

        public DataSet Consultar(string strSQL) {
            string strconn = "Data Source=den1.mssql7.gear.host;Initial Catalog=inmobiliarias;User Id=inmobiliarias;Password=Aw8vDVcw_aJ-";
            SqlConnection con = new SqlConnection(strconn);
            con.Open();
            SqlCommand cmd = new SqlCommand(strSQL, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }

        protected void pais(object sender, EventArgs e)
        {

        }

        protected void Paiseleccionado(object sender, EventArgs e)
        {
       
            int paisId = Convert.ToInt32(DDL_Pais.SelectedValue);
            DDL_CIUDAD.DataSource = Consultar("select distinct * from tbl_ciudad WHERE id_pais =" + paisId);
            DDL_CIUDAD.DataTextField = "nombre";
            DDL_CIUDAD.DataValueField = "id_ciudad";
            DDL_CIUDAD.DataBind();
           

        }
    }
}