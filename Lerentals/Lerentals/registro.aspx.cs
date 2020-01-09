using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

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
            if (validarUsuario(TB_Usuario.Text) == 0)
            {

                int clave = rdn.Next(10000000, 90000000);
                int rol = DDL_rol.SelectedIndex;
                rol = rol + 1;
                string estado = "Activo";
                int nit = 0;
                string sexo = "";

                int n = 0;
                do
                {
                    if (DDL_Sexo.SelectedIndex > 0)
                    {
                        switch (int.Parse(DDL_Sexo.SelectedValue))
                        {
                            case 1:
                                sexo = "Masculino";
                                break;
                            case 2:
                                sexo = "Femenino";
                                break;
                        }
                    }
                    else
                    {
                        string script = "alert('Seleccione Sexo ...');";
                        ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
                        return;
                    }
                } while (n < 0);

                string perfil = "";
                int m = 0;
                do
                {
                    if (DDL_rol.SelectedIndex > 0)
                    {
                        switch (int.Parse(DDL_rol.SelectedValue))
                        {
                            case 1:
                                perfil = "Empresa";
                                break;
                            case 2:
                                perfil = "Mantenimiento";
                                break;
                            case 3:
                                perfil = "Arrendador";
                                break;
                        }
                    }
                    else
                    {
                        string script = "alert('Seleccione un ROL ...');";
                        ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
                        return;
                    }
                } while (m < 0);


                insertarUsuario(TB_Usuario.Text, clave, estado, rol, TB_Nombre.Text, nit, sexo, TB_Correo.Text, perfil);
            }
            else {
                string script = "alert('El nombre de Usuario ya ha sido utilizado ...');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
                return;
            }

}
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
 
            int n = 0;

            do
            {

                Session["estado"] = DDL_rol.SelectedValue;

                switch (int.Parse(DDL_rol.SelectedValue))
                {
                    case 1:
                        Label_NombreEmpresa.Visible = true;
                        TB_NombreEmpresa.Visible = true;
                        Label_Nit.Visible = true;
                        TB_Nit.Visible = true;
                        Btn_Guardar.Visible = false;
                        Btn_GuardarEmpresa.Visible = true;
                        break;
                    case 2:
                        Label_NombreEmpresa.Visible = false;
                        TB_NombreEmpresa.Visible = false;
                        Label_Nit.Visible = false;
                        TB_Nit.Visible = false;
                        Btn_Guardar.Visible = true;
                        Btn_GuardarEmpresa.Visible = false;
                        break;
                    case 3:
                        Label_NombreEmpresa.Visible = false;
                        TB_NombreEmpresa.Visible = false;
                        Label_Nit.Visible = false;
                        TB_Nit.Visible = false;
                        Btn_Guardar.Visible = true;
                        Btn_GuardarEmpresa.Visible = false;

                        break;
                }

            } while (n < 0);


        }

        public string insertarUsuario( string usuario,int clave, string estado,int rol, string nombre,int nit,string sexo, string correo, string perfil)
        {
            
            string salida = "se inserto";
            ClientScriptManager cm = this.ClientScript;

            try
            {
                SqlConnection conexion = BdComun.ObtenerConexion();
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

        public int validarEmpresa(int nit, string nombreEmpresa)
        {
            
            ClientScriptManager cm = this.ClientScript;
            
            int contador = 0;
            try
            {
                SqlConnection conexion = BdComun.ObtenerConexion();
                SqlCommand consulta = new SqlCommand(string.Format("Select * from tbl_empresas Where (nit_empr= " + nit + ") or (empr_name = '" + nombreEmpresa + "' ) "), conexion);
                SqlDataReader dr = consulta.ExecuteReader();
                if (dr.Read())
                {
                    contador++;
                }
                dr.Close();

                //SqlConnection conexion = BdComun.ObtenerConexion();
                //DataTable dt = new DataTable();
                //SqlCommand consulta = new SqlCommand(string.Format("Select * from tbl_empresas Where (nit_empr= "+nit+ ") or (empr_name = '" + nombreEmpresa + "' ) "), conexion);
                //SqlDataAdapter dr = new SqlDataAdapter(consulta);
                //dr.Fill(dt);
                //if (dt.Rows.Count > 0)
                //{
                //    contador++;
                //}
                //conexion.Close();

            }
            catch (Exception ex)
            {
                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('No se pudo consultar la BD');</script>");

            }

            return contador;
        }


        public int validarUsuario( string usuario)
        {

            ClientScriptManager cm = this.ClientScript;

            int contador = 0;
            try
            {
                SqlConnection conexion = BdComun.ObtenerConexion();
                SqlCommand consulta = new SqlCommand(string.Format("Select * from tbl_usuarios Where user_login= '" + usuario + "'"), conexion);
                SqlDataReader dr = consulta.ExecuteReader();
                if (dr.Read())
                {
                    contador++;
                }
                dr.Close();

                //SqlConnection conexion = BdComun.ObtenerConexion();
                //DataTable dt = new DataTable();
                //SqlCommand consulta = new SqlCommand(string.Format("Select * from tbl_empresas Where (nit_empr= "+nit+ ") or (empr_name = '" + nombreEmpresa + "' ) "), conexion);
                //SqlDataAdapter dr = new SqlDataAdapter(consulta);
                //dr.Fill(dt);
                //if (dt.Rows.Count > 0)
                //{
                //    contador++;
                //}
                //conexion.Close();

            }
            catch (Exception ex)
            {
                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('No se pudo consultar la BD');</script>");

            }

            return contador;
        }
        protected void Btn_GuardarEmpresa_Click(object sender, EventArgs e)
        {
            if (validarUsuario(TB_Usuario.Text) == 0)
            {
                if (validarEmpresa(Convert.ToInt32(TB_Nit.Text), TB_NombreEmpresa.Text) == 0)
                {

                    int clave = rdn.Next(10000000, 90000000);
                    int rol = DDL_rol.SelectedIndex;
                    rol = rol + 1;
                    string estado = "Activo";
                    string sexo = "";

                    int n = 0;
                    do
                    {
                        if (DDL_Sexo.SelectedIndex > 0)
                        {
                            switch (int.Parse(DDL_Sexo.SelectedValue))
                            {
                                case 1:
                                    sexo = "Masculino";
                                    break;
                                case 2:
                                    sexo = "Femenino";
                                    break;
                            }
                        }
                        else
                        {
                            string script = "alert('Seleccione Sexo ...');";
                            ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
                            return;
                        }
                    } while (n < 0);

                    string perfil = "";
                    int m = 0;
                    do
                    {
                        if (DDL_rol.SelectedIndex > 0)
                        {
                            switch (int.Parse(DDL_rol.SelectedValue))
                            {
                                case 1:
                                    perfil = "Empresa";
                                    break;
                                case 2:
                                    perfil = "Mantenimiento";
                                    break;
                                case 3:
                                    perfil = "Arrendador";
                                    break;
                            }
                        }
                        else
                        {
                            string script = "alert('Seleccione un ROL ...');";
                            ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
                            return;
                        }
                    } while (m < 0);

                    insertarEmpresa(TB_Usuario.Text, clave, estado, rol, TB_Nombre.Text, sexo, TB_Correo.Text, perfil, Convert.ToInt32(TB_Nit.Text), TB_NombreEmpresa.Text);
                }
                else
                {
                    string script = "alert('Nit o Nombre de la empresa ya registrado  ...');";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
                    return;
                }

            }
            else
            {
                string script = "alert('El nombre de Usuario ya ha sido utilizado ...');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
                return;
            }
        }

        protected void TB_NombreEmpresa_TextChanged(object sender, EventArgs e)
        {

        }
    }
}