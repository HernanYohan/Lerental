<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fichaTecnica.aspx.cs" Inherits="Lerentals.fichaTecnica" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <!-- Favicon -->
  <link href="img/favicon.ico" rel="icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Raleway:400,500,700|Roboto:400,900" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">

  <!-- =======================================================
    Theme Name: Bell
    Theme URL: https://bootstrapmade.com/bell-free-bootstrap-4-template/
    Author: BootstrapMade.com
    Author URL: https://bootstrapmade.com
  ======================================================= -->



<head runat="server">
    <title>Flex-Slider With Custom Upload Option</title>
    <link href="css/flexslider.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.8.2-min.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/jquery.flexslider.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            InitializeImageSlider();
        });
        function InitializeImageSlider() {
            $('.flexslider').flexslider({
                animation: "slide",
                controlNav: true,
                directionNav: true,
                itemWidth: "100%",
                itemHeight: 400
            });
        }
    </script>



    <style type="text/css">
        .error, .notice, .success
        {
            padding: .8em;
            margin-bottom: 1em;
            border: 2px solid #ddd;
        }
        .error
        {
            background: #FBE3E4;
            color: #8a1f11;
            border-color: #FBC2C4;
        }
        .notice
        {
            background: #FFF6BF;
            color: #514721;
            border-color: #FFD324;
        }
        .success
        {
            background: #E6EFC2;
            color: #264409;
            border-color: #C6D880;
        }
        .error a
        {
            color: #8a1f11;
        }
        .notice a
        {
            color: #514721;
        }
        .success a
        {
            color: #264409;
        }
        .auto-style5 {
            color: #3366CC;
            font-size: xx-large;
        }
        .auto-style7 {
            color: #000000;
        }
        .auto-style11 {
            height: 26px;
        }
        .auto-style14 {
            color: #000000;
            width: 64px;
        }
        .auto-style18 {
            color: #3366CC;
            font-size: xx-large;
            width: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="banner1 grid_24 clearfix banner-1-chrome">
             <table class="w-100">
            <tr>
                <td class="auto-style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style5" colspan="15" style="font-family: 'Arial Black'">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ficha tecnica del inmueble&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style14" colspan="7">
                    &nbsp;</td>
                <td class="auto-style7" colspan="3">
                    &nbsp;</td>
                <td class="auto-style7" colspan="3">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style7">
                    <i class="fa fa-home fa-2x" aria-hidden="true" style="margin-left: 5px"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="proyecto_cuidad" runat="server"></asp:Label>
                </td>
                <td class="auto-style7">
                    <i class="fa fa-address-book fa-2x" aria-hidden="true" style="margin-left: 2px"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="L_DireccionDes" runat="server"></asp:Label>
                </td>
                <td class="auto-style14" colspan="7">
                    <i class="fa fa-address-book-o fa-2x" aria-hidden="true" style="margin-left: 5px; width: 1px;"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="L_Direccion" runat="server"></asp:Label>
                </td>
                <td class="auto-style7" colspan="3">
                    <i class="fa fa-home fa-2x" aria-hidden="true" style="margin-left: 3px; width: 0px;"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="L_refInm" runat="server"></asp:Label>
                </td>
                <td class="auto-style7" colspan="3">
                    <i class="fa fa-id-badge fa-2x" aria-hidden="true" style="width: 5px; margin-left: 4px; margin-right: 0px"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="L_CodInmueble" runat="server"></asp:Label>
                </td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style14" colspan="7">
                    &nbsp;</td>
                <td class="auto-style7" colspan="3">
                    &nbsp;</td>
                <td class="auto-style7" colspan="3">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style7">
                    <i class="fa fa-money fa-2x" aria-hidden="true" style="margin-left: 6px"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label_Valor" runat="server" Text="Valor : "></asp:Label>
                    <asp:Label ID="L_Valor" runat="server"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:Image ID="Imag_moneda" runat="server" ImageUrl="~/img/MONEDA.png" />
                    <asp:Label ID="Label_Moneda" runat="server" Text="Moneda :"></asp:Label>
                    <asp:Label ID="L_moneda" runat="server"></asp:Label>
                </td>
                <td class="auto-style14" colspan="7">
                    <asp:Image ID="Img_Mts" runat="server" ImageUrl="~/img/METROS.png" />
                    <asp:Label ID="Label_Mts2" runat="server" Text="Mts2 :"></asp:Label>
                    <asp:Label ID="L_Mts2" runat="server"></asp:Label>
                </td>
                <td class="auto-style7" colspan="3">
                    <asp:Image ID="Img_habitaciones" runat="server" ImageUrl="~/img/HABITACIONES.png" />
                    <asp:Label ID="Label_Habitaciones" runat="server" Text="Habitaciones :"></asp:Label>
                    <asp:Label ID="L_habitaciones" runat="server"></asp:Label>
                </td>
                <td class="auto-style7" colspan="3">
                    &nbsp;<i class="fa fa-bath fa-2x" aria-hidden="true" style="width: 0px; margin-left: 2px; margin-right: 0px"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="L_baños" runat="server"></asp:Label>
                </td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5" rowspan="20">
                    &nbsp;</td>
                <td class="auto-style18" colspan="6" rowspan="19">
                    <div id="divImageSlider" runat="server" class="flexslider">
                    </div>
                </td>
                <td colspan="9">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <tr>
                <td colspan="9">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <tr>
                <td colspan="9">
                    &nbsp;<span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Caracteristicas</span></td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <tr>
                <td class="auto-style11" colspan="9">
                    &nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
                <tr>
                <td>
                    <asp:CheckBox ID="CB_Garaje" runat="server" Enabled="False" />
                    </td>
                <td>
                    <i class="fa fa-car " aria-hidden="true" style="width: 6px; margin-left: 7px"></i>   
                      &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label_Garaje" runat="server" Text="Garaje"></asp:Label>
                    </td>
                <td>
                    <asp:CheckBox ID="CB_SalaJuego" runat="server" Enabled="False" />
                    </td>
                <td>
                    <i class="fa fa-gamepad" aria-hidden="true" style="width: 1px; height: 19px; margin-left: 4px"></i>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label_Saladejuegos" runat="server" Text="Sala de juegos"></asp:Label>
                    </td>
                <td>
                    <asp:CheckBox ID="CB_Caldera" runat="server" Enabled="False" />
                    </td>
                <td colspan="2">
                     <i class="fa fa-fire " aria-hidden="true" style="width: 6px; margin-left: 5px; margin-right: 0px"></i>
                     &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label_caldera" runat="server" Text="Caldera"></asp:Label>
                    </td>
                <td>
                    <asp:CheckBox ID="CB_ZonaBBQ" runat="server" Enabled="False" />
                    </td>
                <td>
                    <i class="fa fa-cutlery " aria-hidden="true" style="width: 6px; margin-left: 8px"></i>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label_ZonaBBQ" runat="server" Text="Zona BBQ"></asp:Label>
                    </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td colspan="2">
                     &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <tr>
                <td>
                    <asp:CheckBox ID="CB_RedIncendio" runat="server" Enabled="False" />
                    </td>
                <td>
                    <i class="fa fa-fire-extinguisher " aria-hidden="true" style="margin-left: 12px"></i>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label_RedIncendio" runat="server" Text="Red Incendio"></asp:Label>
                    </td>
                <td>
                    <asp:CheckBox ID="CB_SalaEstar" runat="server" Enabled="False" />
                    </td>
                <td>
                    <asp:Image ID="img_SalaEstar" runat="server"  ImageUrl="~/img/SALA DE ESTAR.png" />
                    <asp:Label ID="Label_SalaEstar" runat="server" Text="Sala Estar"></asp:Label>
                    </td>
                <td>
                    <asp:CheckBox ID="CB_Electrogeno" runat="server" Enabled="False" />
                    </td>
                <td colspan="2">
                    <asp:Image ID="img_electrogeno" runat="server" ImageUrl="~/img/ELECTROGENA.png" />
                    <asp:Label ID="Label_Electrogeno" runat="server" Text="Electrogeno"></asp:Label>
                    </td>
                <td>
                    <asp:CheckBox ID="CB_Cine" runat="server" Enabled="False" />
                    </td>
                <td>
                    <i class="fa fa-video-camera " aria-hidden="true" style="margin-left: 12px"></i>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label_Cine" runat="server" Text="Cine"></asp:Label>
                    </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <tr>
                <td>
                    <asp:CheckBox ID="CB_Piscina" runat="server" Enabled="False" />
                    </td>
                <td>
                    <asp:Image ID="Img_piscina" runat="server" ImageUrl="~/img/PISCINA.png" />
                    <asp:Label ID="Label_Piscina" runat="server" Text="Piscina"></asp:Label>
                    </td>
                <td>
                    <asp:CheckBox ID="CB_Hipoteca" runat="server" Enabled="False" />
                    </td>
                <td>
                    <asp:Image ID="Imh_Hipoteca" runat="server" ImageUrl="~/img/HIPOTECA.png" />
                    <asp:Label ID="Label_Hipoteca" runat="server" Text="Hipoteca"></asp:Label>
                    </td>
                <td>
                    <asp:CheckBox ID="CB_Sauna" runat="server" Enabled="False" />
                    </td>
                <td colspan="2">
                    <asp:Image ID="Img_Sauna" runat="server" ImageUrl="~/img/SAUNA.png" />
                    <asp:Label ID="Label_Sauna" runat="server" Text="Sauna"></asp:Label>
                    </td>
                <td>
                    <asp:CheckBox ID="CB_SalonEventos" runat="server" Enabled="False" />
                    </td>
                <td>
                    <asp:Image ID="img_salonEventos" runat="server" ImageUrl="~/img/SALON DE EVENTOS.png" />
                    <asp:Label ID="Label_SalonEventos" runat="server" Text="Salon Eventos"></asp:Label>
                    </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <tr>
                <td>
                    <asp:CheckBox ID="CB_SalonMultiuso" runat="server" Enabled="False" />
                    </td>
                <td>
                    <asp:Image ID="Img_SalonMultiuso" runat="server" ImageUrl="~/img/SALON MILTIUSO.png" />
                    <asp:Label ID="Label_SalonMiltiuso" runat="server" Text="Salon Miltiuso"></asp:Label>
                    </td>
                <td>
                    <asp:CheckBox ID="CB_Escaleras" runat="server" Enabled="False" />
                    </td>
                <td>
                    <asp:Image ID="Img_escaleras" runat="server" ImageUrl="~/img/ESCALERA.png" />
                    <asp:Label ID="Label_Escaleras" runat="server" Text="Escaleras"></asp:Label>
                    </td>
                <td>
                    <asp:CheckBox ID="CB_Portones" runat="server" Enabled="False" />
                    </td>
                <td colspan="2">
                    <asp:Image ID="Img_portones" runat="server" ImageUrl="~/img/PUERTA.png" />
                    <asp:Label ID="Label_Portones" runat="server" Text="Portones :"></asp:Label>
                    </td>
                <td>
                    <asp:CheckBox ID="CB_Guardia" runat="server" Enabled="False" />
                    </td>
                <td>
                    <asp:Image ID="Img_guardia" runat="server" ImageUrl="~/img/GUARDIA.png" />
                    <asp:Label ID="Label_Guardia" runat="server" Text="Guardia"></asp:Label>
                    </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <tr>
                <td>
                    <asp:CheckBox ID="CB_Hall" runat="server" Enabled="False" />
                    </td>
                <td>
                    <asp:Image ID="Img_Hall" runat="server" ImageUrl="~/img/HAALL.png" />
                    <asp:Label ID="Label_Hall" runat="server" Text="Hall"></asp:Label>
                    </td>
                <td>
                    <asp:CheckBox ID="CB_Tenis" runat="server" Enabled="False" />
                    </td>
                <td>
                    <asp:Image ID="Img_Tenis" runat="server" ImageUrl="~/img/TENNIS.png" />
                    <asp:Label ID="Tenis" runat="server" Text="Tenis"></asp:Label>
                    </td>
                <td>
                    <asp:CheckBox ID="CB_Squash" runat="server" Enabled="False" />
                    </td>
                <td colspan="2">
                    <asp:Image ID="Img_Squas" runat="server" ImageUrl="~/img/SQUASH.png" />
                    <asp:Label ID="LabelSquash" runat="server" Text="Squash"></asp:Label>
                    </td>
                <td>
                    <asp:CheckBox ID="CB_Gym" runat="server" Enabled="False" />
                    </td>
                <td>
                    <asp:Image ID="Img_gym" runat="server" ImageUrl="~/img/GYM.png" />
                    <asp:Label ID="Label_Gym" runat="server" Text="CB_Gym"></asp:Label>
                    </td>
                                

                <td>
                    &nbsp;</td>
                                

                <td>
                    &nbsp;</td>
                                

                <td>
                    &nbsp;</td>
                                

                    <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                                

                <td>
                    &nbsp;</td>
                                

                <td>
                    &nbsp;</td>
                                

                <td>
                    &nbsp;</td>
                                

                    <tr>
                <td>
                    <asp:CheckBox ID="CB_Jardines" runat="server" Enabled="False" />
                        </td>
                <td>
                    <asp:Image ID="Img_jardines" runat="server" ImageUrl="~/img/JARDIN.png" />
                    <asp:Label ID="Label_Jardines" runat="server" Text="Jardines"></asp:Label>
                        </td>
                <td>
                    <asp:CheckBox ID="CB_Ascensor" runat="server" Enabled="False" />
                        </td>
                <td>
                    <asp:Image ID="Img_ascensor" runat="server" ImageUrl="~/img/ASCENSOR.png" />
                    <asp:Label ID="Lable_Ascensor" runat="server" Text="Ascensor"></asp:Label>
                        </td>
                <td>
                    <asp:CheckBox ID="CB_Bodega" runat="server" Enabled="False" />
                        </td>
                <td colspan="2">
                    <asp:Image ID="Img_bodega" runat="server" ImageUrl="~/img/BODEGA.png" />
                    <asp:Label ID="Label_Bodega" runat="server" Text="Bodega"></asp:Label>
                        </td>
                <td>
                    <asp:CheckBox ID="CB_Golf" runat="server" Enabled="False" />
                        </td>
                <td>
                    <asp:Image ID="Img_golf" runat="server" ImageUrl="~/img/GOLF.png" />
                    <asp:Label ID="Label_Golf" runat="server" Text="Golf"></asp:Label>
                        </td>
                                

                <td>
                    &nbsp;</td>
                                

                <td>
                    &nbsp;</td>
                                

                <td>
                    &nbsp;</td>
                                

                    <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                                

                <td>
                    &nbsp;</td>
                                

                <td>
                    &nbsp;</td>
                                

                <td>
                    &nbsp;</td>
                                

                    <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                                

                <td>
                    &nbsp;</td>
                                

                <td>
                    &nbsp;</td>
                                

                <td>
                    &nbsp;</td>
                                

                    <tr>
                <td colspan="4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                                

                <td>
                    &nbsp;</td>
                                

                <td>
                    &nbsp;</td>
                                

                <td>
                    &nbsp;</td>
                                

                    <tr>
                <td colspan="4">
                        </td>
                <td>
                        </td>
                <td colspan="2">
                        </td>
                <td>
                        </td>
                <td>
                        </td>
                                

                <td>
                        </td>
                                

                <td>
                        </td>
                                

                <td>
                        </td>
                                

                    <tr>
                <td class="auto-style5" colspan="2" style="text-align: center">
                    <asp:Button ID="Btn_Volver" class="btn btn-full" runat="server" OnClick="Btn_Volver_Click1" Text="Volver" Height="49px" Width="147px" />
                </td>
                <td class="auto-style18">
                    &nbsp;&nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
                <td colspan="4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td colspan="4" style="text-align: right">
                    &nbsp;</td>
                                

                <td>
                    &nbsp;</td>
                                

                <td>
                    &nbsp;</td>
                                

                <td>
                    &nbsp;</td>
                                

                    <table class="w-100">
    </div>
    <div id="divMessage" runat="server" style="display: none;">
    </div>
    </form>
        </div>
        <table class="w-100">
            <tr>
                <td>&nbsp;&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>

