using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;
using System.Net;

namespace Lerentals
{
   
     
    public partial class registro : System.Web.UI.Page
    {
        int contra;
        int claveEmpresa;
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
            RF_Empresa2.Visible = false;
            RF_Nit2.Visible = false;
            RF_CV.Visible = false;

            if (validarUsuario(TB_Usuario.Text) == 0)
            {
               
                int clave = rdn.Next(1000000, 9000000);
                contra = clave;
                int rol = DDL_rol.SelectedIndex;
                string estado = "Activo";
                int nit = 0;
                string sexo = "";
                string cvUsuario = "N/A";
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
                                perfil = "Comprador";
                                break;
                            case 2:
                                perfil = "Vendedor";
                                break;
                            case 3:
                                perfil = "Proveedor";
                                break;
                            case 4:
                                perfil = "Arrendador";
                                break;
                            case 5:
                                perfil = "Arrendatario";
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

                string especialidad = "";
                if (DDL_rol.SelectedIndex == 3)
                {
                    int h = 0;
                    do
                    {
                        if (DDL_Especialidad.SelectedIndex > 0)
                        {
                            switch (int.Parse(DDL_Especialidad.SelectedValue))
                            {
                                case 1:
                                    especialidad = "Jardineria";
                                    break;
                                case 2:
                                    especialidad = "Electricista";
                                    break;
                                case 3:
                                    especialidad = "Manposteria";
                                    break;
                                case 4:
                                    especialidad = "Limpieza";
                                    break;
                                case 5:
                                    especialidad = "Plomeria";
                                    break;
                                case 6:
                                    especialidad = "Cerrajeria";
                                    break;
                            }
                        }
                        else
                        {
                            string script = "alert('Seleccione una Especialidad ...');";
                            ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
                            return;
                        }
                    } while (h < 0);
                }
                else
                {
                    especialidad = "N/A";
                }
                


                insertarUsuario(TB_Usuario.Text, clave, estado, rol, TB_Nombre.Text, nit, sexo, TB_Correo.Text, perfil,especialidad,cvUsuario);


               
                SendMail(TB_Correo.Text,TB_Nombre.Text,TB_Usuario.Text);

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
                        Label_NombreEmpresa.Visible = false;
                        TB_NombreEmpresa.Visible = false;
                        Label_Nit.Visible = false;
                        TB_Nit.Visible = false;
                        Label_Especialidad.Visible = false;
                        DDL_Especialidad.Visible = false;
                        Label_CV.Visible = false;
                        TB_CV.Visible = false;
                        Btn_Guardar.Visible = true;
                        Btn_GuardarEmpresa.Visible = false;

                        break;
                    case 2:
                        Label_NombreEmpresa.Visible = true;
                        TB_NombreEmpresa.Visible = true;
                        Label_Nit.Visible = true;
                        TB_Nit.Visible = true;
                        Label_CV.Visible = true;
                        TB_CV.Visible = true;
                        Label_Especialidad.Visible = false;
                        DDL_Especialidad.Visible = false;
                        Btn_Guardar.Visible = false;
                        Btn_GuardarEmpresa.Visible = true;
                        break;
                    case 3:
                        Label_NombreEmpresa.Visible = false;
                        TB_NombreEmpresa.Visible = false;
                        Label_Especialidad.Visible = true;
                        DDL_Especialidad.Visible = true;
                        Label_Nit.Visible = false;
                        TB_Nit.Visible = false;
                        Label_CV.Visible = false;
                        TB_CV.Visible = false;
                        Btn_Guardar.Visible = true;
                        Btn_GuardarEmpresa.Visible = false;
                        break;
                    case 4:
                        Label_NombreEmpresa.Visible = false;
                        TB_NombreEmpresa.Visible = false;
                        Label_Nit.Visible = false;
                        TB_Nit.Visible = false;
                        Label_CV.Visible = false;
                        TB_CV.Visible = false;
                        Label_Especialidad.Visible = false;
                        DDL_Especialidad.Visible = false;
                        Btn_Guardar.Visible = true;
                        Btn_GuardarEmpresa.Visible = false;
                        break;
                    case 5:
                        Label_NombreEmpresa.Visible = false;
                        TB_NombreEmpresa.Visible = false;
                        Label_Nit.Visible = false;
                        TB_Nit.Visible = false;
                        Label_CV.Visible = false;
                        TB_CV.Visible = false;
                        Label_Especialidad.Visible = false;
                        DDL_Especialidad.Visible = false;
                        Btn_Guardar.Visible = true;
                        Btn_GuardarEmpresa.Visible = false;
                        break;
                }
            } while (n < 0);
        }

        public string insertarUsuario( string usuario,int clave, string estado,int rol, string nombre,int nit,string sexo, string correo, string perfil, string especialidad, string cvUsu)
        {
            
            string salida = "se inserto";
            ClientScriptManager cm = this.ClientScript;
            
            try
            {
                SqlConnection conexion = BdComun.ObtenerConexion();
                SqlCommand consulta = new SqlCommand(string.Format("insert into tbl_usuarios(user_login,user_pass,user_stat,perfil_id,user_name,nit_empr,user_sexo,user_mail,perfil,especialidad,CV)values('" + usuario+"',"+clave+",'"+estado+"',"+rol+",'"+nombre+"',"+nit+",'"+sexo+"','"+correo+"','"+perfil+ "','" + especialidad + "','" + cvUsu + "')"), conexion);
                consulta.ExecuteNonQuery();
                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Regitrado correctamente');window.location=\"index.aspx\"</script>");   
            }
            catch(Exception ex) {
                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('No se pudo registrar');</script>");
            }
            
            return salida;
        }
        
        public string insertarEmpresa(string usuario, int clave, string estado, int rol, string nombre, string sexo, string correo,string perfil,Int64 nit,string nombreEmpresa,string especialidad, string cvEmpresa)
        {

            ClientScriptManager cm = this.ClientScript;
            SqlConnection conexion = BdComun.ObtenerConexion();
            string salida = "se inserto";
            try
            {
                SqlCommand consulta = new SqlCommand(string.Format("insert into tbl_usuarios(user_login,user_pass,user_stat,perfil_id,user_name,nit_empr,user_sexo,user_mail,perfil,especialidad,CV)values('" + usuario + "'," + clave + ",'" + estado + "'," + rol + ",'" + nombre + "',"+nit+",'" + sexo + "','" + correo + "','"+perfil+ "','" + especialidad + "','" + cvEmpresa + "')"), conexion);
                consulta.ExecuteNonQuery();
                SqlCommand consultaEmpresa = new SqlCommand(string.Format("insert into tbl_empresas(nit_empr,empr_name,empr_stat,empr_cv)values(" + nit + ",'"+nombreEmpresa+"','"+estado+ "','" + cvEmpresa + "')"), conexion);
                consultaEmpresa.ExecuteNonQuery();
                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Regitrado correctamente');window.location=\"index.aspx\"</script>");
            }
            catch (Exception ex)
            {
                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('No se pudo registrar usuario ni empresa');</script>");
            }

            return salida;
        }
        public int validarEmpresa(Int64 nit, string nombreEmpresa)
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

            }
            catch (Exception ex)
            {
                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('No se pudo consultar la BD !!!');</script>");

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
                string nitTxt = TB_Nit.Text;

                if (nitTxt.Length > 6 && nitTxt.Length < 10)
                {

                    string cvTxt = TB_CV.Text;

                    if (cvTxt.Length == 1)
                    {


                        Int64 nit = Convert.ToInt64(TB_Nit.Text);
                        if (validarEmpresa(nit, TB_NombreEmpresa.Text) == 0)
                        {

                            int clave = rdn.Next(1000000, 9000000);
                            claveEmpresa = clave;
                            int rol = DDL_rol.SelectedIndex;
                            string estado = "Activo";
                            string sexo = "";
                            string especialidadEmpresa = "N/A";
                            nit = Convert.ToInt64(TB_Nit.Text);

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
                                            perfil = "Comprador";
                                            break;
                                        case 2:
                                            perfil = "Vendedor";
                                            break;
                                        case 3:
                                            perfil = "Mantenimiento";
                                            break;
                                        case 4:
                                            perfil = "Arrendador";
                                            break;
                                        case 5:
                                            perfil = "Arrendatario";
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

                            insertarEmpresa(TB_Usuario.Text, clave, estado, rol, TB_Nombre.Text, sexo, TB_Correo.Text, perfil, nit, TB_NombreEmpresa.Text, especialidadEmpresa,TB_CV.Text);

                            SendMailEmpresa(TB_Correo.Text, TB_Nombre.Text, TB_Usuario.Text);
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
                        string script = "alert('CV: Solo un caracter');";
                        ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
                        return;
                    }
                }
                else
                {
                    string script = "alert('Numeros para el Nit entre 10000000 y 999999999');";
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
        public string SendMail(string toList, string nombre, string usuario)
        {   

            MailMessage message = new MailMessage();
            SmtpClient smtpClient = new SmtpClient();

            nombre = TB_Nombre.Text;
            usuario = TB_Usuario.Text;
            toList = TB_Correo.Text;
            
            string msg = string.Empty;
            string subject = "Activacion de creacion de cuenta IeRental";
            string body = "Hola " + nombre + ", nos permitimos informarte que se ha creado tu cuenta en IeRental, las credenciales para acceder a la aplicacion son, <br /> "
               + " Usuario: " + usuario
               + "<br />Contraseña : " + contra 
               + "<br />Atentamente Grupo IeRental  "
               + "<br />Si tienes algun problema te puedes comunicar al siquiente correo soporteierental@gmail.com ";
            string ccList = "hernanyohh@hotmail.com";
            string from = "software@ciproba.com";

            try
            {
                MailAddress fromAddress = new MailAddress(from);
                message.From = fromAddress;
                message.To.Add(toList);
                if (ccList != null && ccList != string.Empty)
                    message.CC.Add(ccList);
                    message.Subject = subject;
                    message.IsBodyHtml = true;
                    message.Body = body;
                    smtpClient.Host = "smtp.gmail.com";   // We use gmail as our smtp client
                    smtpClient.Port = 587;
                    smtpClient.EnableSsl = true;
                    smtpClient.UseDefaultCredentials = true;
                    smtpClient.Credentials = new System.Net.NetworkCredential("software@ciproba.com", "Software2020**");

                    smtpClient.Send(message);
                    msg = "Successful<BR>";
            }
            catch (Exception ex)
            {
                msg = ex.Message;
            }
            return msg;
        }

        public string SendMailEmpresa(string toList, string nombre, string usuario)
        {

            MailMessage message = new MailMessage();
            SmtpClient smtpClient = new SmtpClient();

            nombre = TB_Nombre.Text;
            usuario = TB_Usuario.Text;
            toList = TB_Correo.Text;

            string msg = string.Empty;
            string subject = "Activacion de creacion de cuenta IeRental";
            string body = "Hola " + nombre + ", nos permitimos informarte que se ha creado tu cuenta en IeRental, las credenciales para acceder a la aplicacion son, <br /> "
               + " Usuario: " + usuario
               + "<br />Contraseña : " + claveEmpresa
               + "<br />Atentamente Grupo IeRental  "
               + "<br />Si tienes algun problema te puedes comunicar al siquiente correo soporteierental@gmail.com ";
            string ccList = "hernanyohh@hotmail.com";
            string from = "software@ciproba.com";

            try
            {
                MailAddress fromAddress = new MailAddress(from);
                message.From = fromAddress;
                message.To.Add(toList);
                if (ccList != null && ccList != string.Empty)
                    message.CC.Add(ccList);
                message.Subject = subject;
                message.IsBodyHtml = true;
                message.Body = body;
                smtpClient.Host = "smtp.gmail.com";   // We use gmail as our smtp client
                smtpClient.Port = 587;
                smtpClient.EnableSsl = true;
                smtpClient.UseDefaultCredentials = true;
                smtpClient.Credentials = new System.Net.NetworkCredential("software@ciproba.com", "Software2020**");

                smtpClient.Send(message);
                msg = "Successful<BR>";
            }
            catch (Exception ex)
            {
                msg = ex.Message;
            }
            return msg;
        }


    }
}