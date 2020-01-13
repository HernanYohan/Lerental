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
        private void MensajeBox(string pvStrMsj)
        {
            string script = "<script language=\"javascript\">alert('" + pvStrMsj + "');</script>";
            ScriptManager.RegisterClientScriptBlock(Page, GetType(), "OK", script, false);
        }
             protected void ASPxButton1_Click1(object sender, EventArgs e)
        {
            if (tipo_actividad.SelectedIndex > 0 && tipo_inmueble.SelectedIndex > 0)
            {
                Session["tipo_inmueble"] = this.tipo_inmueble.SelectedItem.Text;
                Session["tipo_actividad"] = this.tipo_actividad.SelectedItem.Text;
                Session["proyecto_cuidad"] = this.proyecto_cuidad.SelectedItem.Text;
                Response.Redirect("Default.aspx");
            }
            else
            {

                string script = "alert('Seleccione un Valor...');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
                return;

            }
        }

     
        protected void BTN_Registrarse_Click1(object sender, EventArgs e)
        {
            Response.Redirect("registro.aspx");
        }
    }
}