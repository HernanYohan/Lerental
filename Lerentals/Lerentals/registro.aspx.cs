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
            int clave = rdn.Next(1000000, 9000000);
            int rol = DDL_rol.SelectedIndex;
            rol = rol + 1;
            string estado = "Activo";


            //if (DDL_sexo.SelectedIndex == 1)
            //{
            //    sexo ="Masculino";
            //}
            //if (DDL_sexo.SelectedIndex == 2)
            //{
            //    sexo ="Femenino";
            //}
            
            insertar(TB_Usuario.Text,clave,estado,rol,TB_Nombre.Text,TB_Sexo.Text,TB_Correo.Text);
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

        public string insertar( string usuario,int clave, string estado,int rol, string nombre,string sexo, string correo)
        {


            SqlConnection conexion = BdComun.ObtenerConexion();
            string salida = "se inserto";
            try
            {
                SqlCommand consulta = new SqlCommand(string.Format("insert into tbl_usuarios(user_login,user_pass,user_stat,perfil_id,user_name,user_sexo,user_mail)values('" + usuario+"',"+clave+",'"+estado+"',"+rol+",'"+nombre+"','"+sexo+"','"+correo+"')"), conexion);
                consulta.ExecuteNonQuery();
                //SqlDataAdapter da = new SqlDataAdapter(consulta);
            }
            catch(Exception ex) {
                salida = "no se logro insertar" + ex.ToString();
            }
            
            return salida;
        }

        public string insertarEmpresa(string usuario, int clave, string estado, int rol, string nombre, string sexo, string correo,int nit,string nombreEmpresa)
        {


            SqlConnection conexion = BdComun.ObtenerConexion();
            string salida = "se inserto";
            try
            {
                SqlCommand consulta = new SqlCommand(string.Format("insert into tbl_usuarios(user_login,user_pass,user_stat,perfil_id,user_name,nit_empr,user_sexo,user_mail)values('" + usuario + "'," + clave + ",'" + estado + "'," + rol + ",'" + nombre + "',"+nit+",'" + sexo + "','" + correo + "')"), conexion);
                consulta.ExecuteNonQuery();
                SqlCommand consultaEmpresa = new SqlCommand(string.Format("insert into tbl_empresas(nit_empr,empr_name,empr_stat)values(" + nit + ",'"+nombreEmpresa+"','"+estado+"')"), conexion);
                consultaEmpresa.ExecuteNonQuery();
                //SqlDataAdapter da = new SqlDataAdapter(consulta);
            }
            catch (Exception ex)
            {
                salida = "no se logro insertar" + ex.ToString();
            }

            return salida;
        }

        protected void Btn_GuardarEmpresa_Click(object sender, EventArgs e)
        {
            int clave = rdn.Next(1000000, 9000000);
            int rol = DDL_rol.SelectedIndex;
            rol = rol + 1;
            string estado = "Activo";
            

           
            
            insertarEmpresa(TB_Usuario.Text, clave, estado, rol, TB_Nombre.Text, TB_Sexo.Text, TB_Correo.Text,Convert.ToInt32(TB_Nit.Text),TB_NombreEmpresa.Text);
        }
    }
}