using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

namespace Lerentals
{
    public partial class fichaTecnica : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadImage();
        }

        private void LoadImage()
        {
            this.proyecto_cuidad.Text = "Bogota DC.";//Session["proyecto_cuidad"].ToString();
            String imagenes = "10"; //  Session["ruta"].ToString();
            try
            {




                string imagePath = "~/Upload/" + imagenes + "/";
                string imageSource = SiteBaseUrl + "Upload/" + imagenes + "/";
                string PhotoFilePath = Server.MapPath(imagePath);
                string divSlider = @"<ul class='slides'>";
                string fileSlide = string.Empty;
                string fileName = string.Empty;

                DirectoryInfo di = new DirectoryInfo(PhotoFilePath);
                FileInfo[] rgFiles = di.GetFiles("*.*");
                foreach (FileInfo fi in rgFiles)
                {
                    fileSlide = @"<li><img src='";

                    fileSlide += imageSource + fi + "' /></li>";

                    divSlider += fileSlide;
                }

                divImageSlider.InnerHtml = divSlider + "</ul>";

            }
            catch (Exception ex)
            {
                //ShowErrorMsg("error", ex.Message);
            }

            SqlConnection conexion = BdComun.ObtenerConexion();
            SqlCommand consulta = new SqlCommand(string.Format("Select * FROM dbo.v_matrix_basic_inmuebles  where  ID_linea = " + imagenes), conexion);
            SqlDataReader registro = consulta.ExecuteReader();

            if (registro.Read())
            {
                L_Valor.Text = registro["valo_inmueble"].ToString();
                L_moneda.Text = registro["moneda"].ToString();
                L_Direccion.Text = registro["Proyecto_dire"].ToString();
                L_DireccionDes.Text = registro["proyecto_desc"].ToString();
                L_CodInmueble.Text = registro["codi_inmueble"].ToString();
                L_refInm.Text = registro["id_inmueble"].ToString();
                L_Mts2.Text = registro["mts2"].ToString();
                L_habitaciones.Text = registro["rooms"].ToString();
                L_baños.Text = registro["baths"].ToString();

                //        String moneda = registro["valo_inmueble"].ToString();

                //        L_Valor.Text = String.Format("{0:G2}", moneda);

                //        // this.L_Valor.Text = Format(Val(Replace(this..Text, ",", "")), "#,###,###");


                //        //L_Construido.Text = registro["construido"].ToString();
                //        // L_hipoteca.Text = registro["Hipoteca"].ToString();
                //        // L_Piscina.Text = registro["Piscina"].ToString();
                //        //L_electrogeno.Text = registro["Electrogeno"].ToString();
                //        // L_caldera.Text = registro["Caldera"].ToString();
                //        // L_cine.Text = registro["Cine"].ToString();
                //        // L_Sauna.Text = registro["Sauna / Turco"].ToString();
                //        // L_SalonEeventos.Text = registro["Salon Eventos"].ToString();
                //        // L_jardines.Text = registro["Jardines"].ToString();
                //        //L_Ascensor.Text = registro["Ascensor"].ToString();
                //        // L_salaEstar.Text = registro["Sala Estar"].ToString();
                //        // L_Bodega.Text = registro["Bodega"].ToString();
                //        // L_zonaBBQ.Text = registro["Zona BBQ"].ToString();
                //        // L_Golf.Text = registro["Golf"].ToString();
                //        // L_hall.Text = registro["Hall"].ToString();
                //        // L_salaJuego.Text = registro["Salon Juegos"].ToString();
                //        // L_tenis.Text = registro["Tenis"].ToString();
                //        //L_squash.Text = registro["Squash"].ToString();
                //        // L_garaje.Text = registro["Garage"].ToString();
                //        // L_gym.Text = registro["GYM"].ToString();
                //        // L_portones.Text = registro["Portones"].ToString();
                //        //L_guardia.Text = registro["Guardia"].ToString();
                //        // L_redIncendio.Text = registro["Red Incendios"].ToString();
                //        // L_escalerasElectricas.Text = registro["Escaleras Electricas"].ToString();
                //        // L_salonMultiuso.Text = registro["Salon multiuso"].ToString();
                //        // L_antiguedad.Text = registro["ANTIGUEDAD"].ToString();

                //        String salonMultiuso = registro["Salon multiuso"].ToString();

                //        if (salonMultiuso == "Si")
                //        {
                //            CB_SalonMultiuso.BackColor = Color.Blue;
                //            CB_SalonMultiuso.Checked = true;
                //        }
                //        else
                //        {
                //            CB_SalonMultiuso.Checked = false;
                //        }

                //        String escaleras = registro["Escaleras Electricas"].ToString();

                //        if (escaleras == "Si")
                //        {
                //            CB_Escaleras.BackColor = Color.Blue;
                //            CB_Escaleras.Checked = true;
                //        }
                //        else
                //        {
                //            CB_Escaleras.Checked = false;
                //        }

                //        String redIncendios = registro["Red Incendios"].ToString();

                //        if (redIncendios == "Si")
                //        {
                //            CB_RedIncendio.BackColor = Color.Blue;
                //            CB_RedIncendio.Checked = true;
                //        }
                //        else
                //        {
                //            CB_RedIncendio.Checked = false;
                //        }

                //        String guardia = registro["Guardia"].ToString();

                //        if (guardia == "Si")
                //        {
                //            CB_Guardia.BackColor = Color.Blue;
                //            CB_Guardia.Checked = true;
                //        }
                //        else
                //        {
                //            CB_Guardia.Checked = false;
                //        }

                //        String portones = registro["Portones"].ToString();

                //        if (portones == "Si")
                //        {
                //            CB_Portones.BackColor = Color.Blue;
                //            CB_Portones.Checked = true;
                //        }
                //        else
                //        {
                //            CB_Portones.Checked = false;
                //        }

                //        String salaEstar = registro["Sala Estar"].ToString();

                //        if (salaEstar == "Si")
                //        {
                //            CB_SalaEstar.BackColor = Color.Blue;
                //            CB_SalaEstar.Checked = true;
                //        }
                //        else
                //        {
                //            CB_SalaEstar.Checked = false;
                //        }

                //        String electrogeno = registro["Electrogeno"].ToString();

                //        if (electrogeno == "Si")
                //        {
                //            CB_Electrogeno.BackColor = Color.Blue;
                //            CB_Electrogeno.Checked = true;
                //        }
                //        else
                //        {
                //            CB_Electrogeno.Checked = false;
                //        }

                //        String hipoteca = registro["Hipoteca"].ToString();

                //        if (hipoteca == "Si")
                //        {
                //            CB_Hipoteca.BackColor = Color.Blue;
                //            CB_Hipoteca.Checked = true;
                //        }
                //        else
                //        {
                //            CB_Hipoteca.Checked = false;
                //        }

                //        String piscina = registro["Piscina"].ToString();

                //        if (piscina == "Si")
                //        {
                //            CB_Piscina.BackColor = Color.Blue;
                //            CB_Piscina.Checked = true;
                //        }
                //        else
                //        {
                //            CB_Piscina.Checked = false;
                //        }

                String caldera = registro["Caldera"].ToString();

            if (caldera == "Si")
            {
                CB_Caldera.BackColor = Color.Blue;
                CB_Caldera.Checked = true;
            }
            else
            {
                CB_Caldera.Checked = false;
            }

            //        String cine = registro["Cine"].ToString();

            //        if (cine == "Si")
            //        {
            //            CB_Cine.BackColor = Color.Blue;
            //            CB_Cine.Checked = true;
            //        }
            //        else
            //        {
            //            CB_Cine.Checked = false;
            //        }

            //        String sauna = registro["Sauna / Turco"].ToString();

            //        if (sauna == "Si")
            //        {
            //            CB_Sauna.BackColor = Color.Blue;
            //            CB_Sauna.Checked = true;
            //        }
            //        else
            //        {
            //            CB_Sauna.Checked = false;
            //        }

            //        String salonEventos = registro["Salon Eventos"].ToString();

            //        if (salonEventos == "Si")
            //        {
            //            CB_SalonEventos.BackColor = Color.Blue;
            //            CB_SalonEventos.Checked = true;
            //        }
            //        else
            //        {
            //            CB_SalonEventos.Checked = false;
            //        }

            //        String jardines = registro["Jardines"].ToString();

            //        if (jardines == "Si")
            //        {
            //            CB_Jardines.BackColor = Color.Blue;
            //            CB_Jardines.Checked = true;
            //        }
            //        else
            //        {
            //            CB_Jardines.Checked = false;
            //        }

            //        String ascensor = registro["Ascensor"].ToString();

            //        if (ascensor == "Si")
            //        {
            //            CB_Ascensor.BackColor = Color.Blue;
            //            CB_Ascensor.Checked = true;
            //        }
            //        else
            //        {
            //            CB_Ascensor.Checked = false;
            //        }

            //        String bodega = registro["Bodega"].ToString();

            //        if (bodega == "Si")
            //        {
            //            CB_Bodega.BackColor = Color.Blue;
            //            CB_Bodega.Checked = true;
            //        }
            //        else
            //        {
            //            CB_Bodega.Checked = false;
            //        }

            String zona = registro["Zona BBQ"].ToString();

            if (zona == "Si")
            {
                CB_ZonaBBQ.BackColor = Color.Blue;
                CB_ZonaBBQ.Checked = true;
            }
            else
            {
                CB_ZonaBBQ.Checked = false;
            }

            //        String golf = registro["Golf"].ToString();

            //        if (golf == "Si")
            //        {
            //            CB_Golf.BackColor = Color.Blue;
            //            CB_Golf.Checked = true;
            //        }
            //        else
            //        {
            //            CB_Golf.Checked = false;
            //        }

            //        String hall = registro["Hall"].ToString();

            //        if (hall == "Si")
            //        {
            //            CB_Hall.BackColor = Color.Blue;
            //            CB_Hall.Checked = true;
            //        }
            //        else
            //        {
            //            CB_Hall.Checked = false;
            //        }

            String salonJuegos = registro["Salon Juegos"].ToString();

            if (salonJuegos == "Si")
            {
                CB_SalaJuego.BackColor = Color.Blue;
                CB_SalaJuego.Checked = true;
            }
            else
            {
                CB_SalaJuego.Checked = false;
            }

            //        String tenis = registro["Tenis"].ToString();

            //        if (tenis == "Si")
            //        {
            //            CB_Tenis.BackColor = Color.Blue;
            //            CB_Tenis.Checked = true;
            //        }
            //        else
            //        {
            //            CB_Tenis.Checked = false;
            //        }

            //        String squash = registro["Squash"].ToString();

            //        if (squash == "Si")
            //        {
            //            CB_Squash.BackColor = Color.Blue;
            //            CB_Squash.Checked = true;
            //        }
            //        else
            //        {
            //            CB_Squash.Checked = false;
            //        }

            String garaje = registro["Garage"].ToString();

            if (garaje == "Si")
            {
                CB_Garaje.BackColor = Color.Blue;
                CB_Garaje.Checked = true;
            }
            else
            {
                CB_Garaje.Checked = false;
            }

            //        String gym = registro["GYM"].ToString();

            //        if (gym == "Si")
            //        {
            //            CB_Gym.BackColor = Color.Blue;
            //            CB_Gym.Checked = true;
            //        }
            //        else
            //        {
            //            CB_Gym.Checked = false;
            //        }

               }





               conexion.Close();

        }

        public static string SiteBaseUrl
        {
            get
            {
                //return ConfigurationManager.AppSettings["RootPath"].ToString(); 
                string orginalUrl = HttpContext.Current.Request.Url.AbsoluteUri;
                if (HttpContext.Current.Request.Url.Query.Length > 0)
                    orginalUrl = orginalUrl.Replace(HttpContext.Current.Request.Url.Query, string.Empty);

                return orginalUrl.Replace(HttpContext.Current.Request.Url.AbsolutePath, string.Empty) + ((HttpContext.Current.Request.ApplicationPath == "/" ? "" : HttpContext.Current.Request.ApplicationPath)) + '/';
            }

        }

    }
}