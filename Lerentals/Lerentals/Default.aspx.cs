using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lerentals
{
    public partial class Default : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            BdComun.ObtenerConexion();
            string proyecto_paises = Session["proyecto_pais"].ToString();

            this.tipo_inmueble.Text = Session["tipo_inmueble"].ToString();
            this.tipo_actividad.Text =Session["tipo_actividad"].ToString();
            this.proyecto_cuidad.Text = Session["proyecto_cuidad"].ToString();
         

            SqlConnection conexion = BdComun.ObtenerConexion();
            SqlCommand consulta = new SqlCommand(string.Format("Select proyecto_cuidad, Proyecto_dire,ID_linea,tipo_inmueble,tipo_actividad,moneda,valo_inmueble,concat('~/Upload/',ID_linea,'/', ID_linea,'_1.jpg') as foto FROM dbo.v_matrix_basic_inmuebles  where proyecto_cuidad='" + proyecto_cuidad.Text + "' and tipo_inmueble='" + tipo_inmueble.Text + "'and tipo_actividad='" + tipo_actividad.Text + "' and empr_stat='Activo'"), conexion);
            SqlDataAdapter da = new SqlDataAdapter(consulta);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                GridView1.DataSource = dt;
                GridView1.DataBind();
                conexion.Close();
            }
            else
            {
                ClientScriptManager cm = this.ClientScript;
                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('No se encontraron registros para tu busqueda');window.location=\"index.aspx\"</script>");
            }

            }

        protected void Btn_filter_Click(object sender, EventArgs e)
        {
 
            if (baths.SelectedIndex > 0 && mts2.SelectedIndex > 0 && rooms.SelectedIndex > 0)
            {
                SqlConnection conexion = BdComun.ObtenerConexion();
                SqlCommand consulta = new SqlCommand(string.Format("Select proyecto_cuidad, Proyecto_dire, ID_linea, tipo_inmueble,tipo_actividad,moneda,valo_inmueble, concat('~/Upload/',ID_linea,'/', ID_linea,'_1.jpg') as foto FROM dbo.v_matrix_basic_inmuebles  where rooms='" + rooms.SelectedItem.Text + "'and baths='" + baths.SelectedItem.Text + "'  and mts2='" + mts2.SelectedItem.Text + "'and antiguedad='" + antiguedad.SelectedItem.Text + "' and proyecto_cuidad='" + proyecto_cuidad.Text + "' and tipo_inmueble='" + tipo_inmueble.Text + "'and tipo_actividad='" + tipo_actividad.Text + "' and empr_stat='Activo' "), conexion);
                SqlDataAdapter da = new SqlDataAdapter(consulta);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    conexion.Close();
                }
                else {
                    string script = "alert('No se han encontrado resultados para su busqueda...');";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
                    return;
                }
            }
            else
            {

                string script = "alert('Seleccione una Opcion...');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
                return;

            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            string filas = row.Cells[5].Text;

            
            //Label12.Text = filas;
            //string valor = GridView1.Rows[0].Cells[5].Text;
            Session["ruta"] = filas;
            Response.Redirect("fichaTecnica.aspx");
          
        }

        protected void BT_Inico_Click1(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }

}