using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lerentals
{
    public partial class registro : System.Web.UI.Page
    {

        Random rdn = new Random();
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BT_Inico_Click1(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void Btn_Guardar_Click(object sender, EventArgs e)
        {
            int clave = rdn.Next(10000000, 90000000);
            int rol = DDL_rol.SelectedIndex;
            rol = rol + 1;
            string estado = "Activo";
            int nit = 0;
            string perfil = "";
            if (DDL_rol.SelectedIndex == 1)
            {
                perfil = "Empresa";
            }
            if (DDL_rol.SelectedIndex == 2)
            {
                perfil = "Mantenimiento";
            }
            if (DDL_rol.SelectedIndex == 3)
            {
                perfil = "Arrendador";
            }

            string sexo = "";
            if (DDL_Sexo.SelectedIndex == 1)
            {
                sexo = "Masculino";
            }
            if (DDL_Sexo.SelectedIndex == 2)
            {
                sexo = "Femenino";
            }


            insertar(TB_Usuario.Text,clave,estado,rol,TB_Nombre.Text,nit,sexo,TB_Correo.Text,perfil);
        }         
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DDL_rol.SelectedIndex == 1 ) { 
                Label_NombreEmpresa.Visible = true;
                TB_NombreEmpresa.Visible = true;
                Label_Nit.Visible = true;
                TB_Nit.Visible = true;
                Btn_Guardar.Visible = false;
                Btn_GuardarEmpresa.Visible = true;
            }
            if (DDL_rol.SelectedIndex == 2)
            {
                Label_NombreEmpresa.Visible = false;
                TB_NombreEmpresa.Visible = false;
                Label_Nit.Visible = false;
                TB_Nit.Visible = false;
                Btn_Guardar.Visible = true;
                Btn_GuardarEmpresa.Visible = false;

            }
            if (DDL_rol.SelectedIndex == 3)
            {
                Label_NombreEmpresa.Visible = false;
                TB_NombreEmpresa.Visible = false;
                Label_Nit.Visible = false;
                TB_Nit.Visible = false;
                Btn_Guardar.Visible = true;
                Btn_GuardarEmpresa.Visible = false;


            }

        }

        public string insertar( string usuario,int clave, string estado,int rol, string nombre,int nit,string sexo, string correo, string perfil)
        {


            SqlConnection conexion = BdComun.ObtenerConexion();
            string salida = "se inserto";
            ClientScriptManager cm = this.ClientScript;

            try
            {
                SqlCommand consulta = new SqlCommand(string.Format("insert into tbl_usuarios(user_login,user_pass,user_stat,perfil_id,user_name,nit_empr,user_sexo,user_mail,perfil)values('" + usuario+"',"+clave+",'"+estado+"',"+rol+",'"+nombre+"',"+nit+",'"+sexo+"','"+correo+"','"+perfil+"')"), conexion);
                consulta.ExecuteNonQuery();
                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Regitrado correctamente');window.location=\"index.aspx\"</script>");
                
            }
            catch(Exception ex) {
                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('No se pudo registrar');</script>");
            }
            
            return salida;
        }

        public string insertarEmpresa(string usuario, int clave, string estado, int rol, string nombre, string sexo, string correo,string perfil,int nit,string nombreEmpresa)
        {

            ClientScriptManager cm = this.ClientScript;
            SqlConnection conexion = BdComun.ObtenerConexion();
            string salida = "se inserto";
            try
            {
                SqlCommand consulta = new SqlCommand(string.Format("insert into tbl_usuarios(user_login,user_pass,user_stat,perfil_id,user_name,nit_empr,user_sexo,user_mail,perfil)values('" + usuario + "'," + clave + ",'" + estado + "'," + rol + ",'" + nombre + "',"+nit+",'" + sexo + "','" + correo + "','"+perfil+"')"), conexion);
                consulta.ExecuteNonQuery();
                SqlCommand consultaEmpresa = new SqlCommand(string.Format("insert into tbl_empresas(nit_empr,empr_name,empr_stat)values(" + nit + ",'"+nombreEmpresa+"','"+estado+"')"), conexion);
                consultaEmpresa.ExecuteNonQuery();
                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Regitrado correctamente');window.location=\"index.aspx\"</script>");

                //SqlDataAdapter da = new SqlDataAdapter(consulta);
            }
            catch (Exception ex)
            {
                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('No se pudo registrar');</script>");
            }

            return salida;
        }

        protected void Btn_GuardarEmpresa_Click(object sender, EventArgs e)
        {
            int clave = rdn.Next(10000000, 90000000);
            int rol = DDL_rol.SelectedIndex;
            rol = rol + 1;
            string estado = "Activo";

            string sexo = "";
            if (DDL_Sexo.SelectedIndex == 1)
            {
                sexo = "Masculino";
            }
            if (DDL_Sexo.SelectedIndex == 2)
            {
                sexo = "Femenino";
            }
            string perfil = "";
            if (DDL_rol.SelectedIndex == 1)
            {
                perfil = "Empresa";
            }
            if (DDL_rol.SelectedIndex == 2)
            {
                perfil = "Mantenimiento";
            }
            if (DDL_rol.SelectedIndex == 3)
            {
                perfil = "Arrendador";
            }


            insertarEmpresa(TB_Usuario.Text, clave, estado, rol, TB_Nombre.Text, sexo, TB_Correo.Text,perfil,Convert.ToInt32(TB_Nit.Text),TB_NombreEmpresa.Text);
        }
    }
}