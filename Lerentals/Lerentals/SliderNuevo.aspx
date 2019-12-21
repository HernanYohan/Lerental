<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SliderNuevo.aspx.cs" Inherits="Lerentals.SliderNuevo" %>

<!DOCTYPE html>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

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


    <title>SliderLerental</title>

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
                itemWidth: "200px",
                itemHeight: 200
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
        


        .auto-style2 {
            height: 26px;
        }



        .auto-style6 {
            font-size: xx-large;
            color: #3366CC;
        }
        .auto-style7 {
            color: #3366CC;
        }
        


        .auto-style9 {
            color: #000000;
        }
        .auto-style11 {
            height: 26px;
            color: #000000;
        }
                


        .auto-style13 {
            height: 49px;
        }
        .auto-style14 {
            height: 49px;
            font-size: x-large;
        }
        


        .auto-style15 {
            font-size: xx-large;
        }
        


        .auto-style16 {
            color: #3366CC;
            height: 23px;
        }
        


        .auto-style17 {
            height: 49px;
            font-size: x-large;
            width: 90px;
        }
        .auto-style18 {
            height: 49px;
            width: 90px;
        }
        .auto-style19 {
            width: 90px;
        }
        


        .auto-style20 {
            height: 49px;
            width: 14px;
        }
        


    </style>
 
 

</head>


<body>
    <form id="form1" runat="server">
    <div class="banner1 grid_24 clearfix banner-1-chrome">
        <table class="w-100">
            <tr>
                <td class="auto-style17">
                    &nbsp;</td>
                <td class="auto-style14" colspan="10">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">
                    &nbsp;</td>
                <td class="auto-style14" colspan="10">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style6">Ficha tecnica del Inmueble</span></td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">
                    &nbsp;</td>
                <td class="auto-style14" colspan="2">
                    &nbsp;</td>
                <td class="auto-style14" colspan="2">
                    &nbsp;</td>
                <td class="auto-style14" colspan="2">
                    &nbsp;</td>
                <td class="auto-style14" colspan="2">
                    &nbsp;</td>
                <td class="auto-style14" colspan="2">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">
                    &nbsp;</td>
                <td class="auto-style13">
                    <span class="auto-style6"><i class="fa fa-home" aria-hidden="true"></i> </span>
                    <asp:Label ID="proyecto_cuidad" runat="server"></asp:Label>
                </td>
                <td class="auto-style13" colspan="4">
                               
                    <span class="auto-style9"><i aria-hidden="true" class="fa fa-address-book-o " ></i> </span>
                    <asp:Label ID="L_DireccionDes" runat="server"></asp:Label>
                            </td>
                <td class="auto-style13" colspan="2">
                               <i class="fa fa-address-book" aria-hidden="true"></i> 
                                <asp:Label ID="L_Direccion" runat="server"></asp:Label>
                            </td>
                <td class="auto-style13" colspan="2">
                                <i class="fa fa-home" aria-hidden="true"></i>
                                <asp:Label ID="L_refInm" runat="server"></asp:Label>
                            </td>
                <td class="auto-style13">
                                <i class="fa fa-id-badge" aria-hidden="true"></i>
                                <asp:Label ID="L_CodInmueble" runat="server"></asp:Label>
                            </td>
                <td class="auto-style13">
                                &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">
                    &nbsp;</td>
                <td class="auto-style13">
                                <asp:Label ID="Label_Valor" runat="server" Text="Valor: "></asp:Label>
                                <asp:Label ID="L_Valor" runat="server" CssClass="auto-style9"></asp:Label>
                </td>
                <td class="auto-style13" colspan="4">
                               
                                <asp:Label ID="Label_Moneda" runat="server" Text="Moneda :" CssClass="auto-style9"></asp:Label>
                                <asp:Label ID="L_moneda" runat="server" CssClass="auto-style9"></asp:Label>
                            </td>
                <td class="auto-style13" colspan="2">
                                <asp:Label ID="Label_Mts2" runat="server" Text="Mts2 :" CssClass="auto-style9"></asp:Label>
                                <asp:Label ID="L_Mts2" runat="server" CssClass="auto-style9"></asp:Label>
                            </td>
                <td class="auto-style13" colspan="2">
                                <asp:Label ID="Label_habitacione" runat="server" Text="Habitaciones :" CssClass="auto-style9"></asp:Label>
                                <asp:Label ID="L_habitaciones" runat="server" CssClass="auto-style9"></asp:Label>
                            </td>
                <td class="auto-style13">
                                <i class="fa fa-bath" aria-hidden="true">
                                <span class="auto-style9">
                                <asp:Label ID="L_baños" runat="server"></asp:Label>
                                </i>
                            </td>
                <td class="auto-style13">
                                &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">
                    &nbsp;</td>
                <td colspan="5">
                    <div id="divImageSlider" runat="server" class="flexslider">
                    </div>
                </td>
                <td colspan="6">
                    <table class="w-100">
                        <tr>
                            <td class="auto-style16" colspan="8">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16" colspan="8">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style15"> Caracteristicas </span>
                            </td>
                        </tr>
                        <tr class="auto-style9">
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td colspan="2">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:CheckBox ID="CB_Garaje" runat="server" Enabled="False" />
                            </td>
                            <td>
                                <i class="fa fa-car fa-2x" aria-hidden="true"></i>
                            </td>
                            <td>
                                <asp:CheckBox ID="CB_SalaJuego" runat="server" Enabled="False" />
                            </td>
                            <td>
                                <i class="fa fa-gamepad fa-2x" aria-hidden="true"></i>
                            </td>
                            <td>
                                <asp:CheckBox ID="CB_Caldera" runat="server" Enabled="False" />
                            </td>
                            <td>
                                <i class="fa fa-fire fa-2x" aria-hidden="true"></i>
                            </td>
                            <td>
                                <asp:CheckBox ID="CB_ZonaBBQ" runat="server" Enabled="False" />
                            </td>
                            <td>
                                </span>
                                <i class="fa fa-cutlery fa-2x" aria-hidden="true"></i>
                            </td>
                        </tr>
                        <tr class="auto-style9">
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr class="auto-style7">
                            <td class="auto-style9">
                                <asp:CheckBox ID="CB_Cine" runat="server" Enabled="False" />
                            </td>
                            <td class="auto-style9">
                                <i class="fa fa-video-camera fa-2x" aria-hidden="true"></i>
                            </td>
                            <td class="auto-style9">
                                <asp:CheckBox ID="CB_SalonEventos" runat="server" Enabled="False" />
                            </td>
                            <td class="auto-style9">
                                <asp:Label ID="Label_SalonEventos" runat="server" Text="Salon Eventos"></asp:Label>
                            </td>
                            <td class="auto-style9">
                                <asp:CheckBox ID="CB_Guardia" runat="server" Enabled="False" />
                            </td>
                            <td class="auto-style9">
                                <asp:Label ID="Label_Guardia" runat="server" Text="Guardia"></asp:Label>
                            </td>
                            <td>
                                <asp:CheckBox ID="CB_RedIncendio" runat="server" Enabled="False" />
                            </td>
                            <td class="auto-style9">
                                <i class="fa fa-fire-extinguisher fa-2x" aria-hidden="true"></i>
                            </td>
                        </tr>
                        <tr class="auto-style7">
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                        </tr>
                        <tr class="auto-style7">
                            <td class="auto-style9">
                                <asp:CheckBox ID="CB_Portones" runat="server" Enabled="False" />
                            </td>
                            <td class="auto-style9">
                                <asp:Label ID="Label_portones" runat="server" Text="Portones"></asp:Label>
                            </td>
                            <td class="auto-style9">
                                <asp:CheckBox ID="CB_Sauna" runat="server" Enabled="False" />
                            </td></td>
                            <td class="auto-style9">
                                <asp:Label ID="Label_Sauna" runat="server" Text="Sauna / Turco"></asp:Label>
                            </td>
                            <td class="auto-style9">
                                <asp:CheckBox ID="CB_Hall" runat="server" Enabled="False" />
                            </td>
                            <td class="auto-style9">
                                <asp:Label ID="Label_Hall" runat="server" Text="Hall"></asp:Label>
                            </td>
                            <td class="auto-style9">
                                <asp:CheckBox ID="CB_Bodega" runat="server" Enabled="False" />
                            </td></td>
                            <td class="auto-style9">
                                <asp:Label ID="Label_Bodega" runat="server" Text="Bodega" style="color: #000000"></asp:Label>
                            </td>
                        </tr>
                        <tr class="auto-style7">
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                        </tr>
                        <tr class="auto-style7">
                            <td class="auto-style11">
                                
                                <asp:CheckBox ID="CB_Escaleras" runat="server" Enabled="False" />
                                                                                        
                            <td class="auto-style11">
                                
                                <asp:Label ID="Label_EscalerasElectricas" runat="server" Text="Escaleras Electricas"></asp:Label>
                                                            
                            </td>
                            <td class="auto-style11">
                                <asp:CheckBox ID="CB_Jardines" runat="server" Enabled="False" />
                            </td>
                            <td class="auto-style11">
                                <asp:Label ID="Label_Jardines" runat="server" Text="Jardines"></asp:Label>
                            </td>
                            <td class="auto-style11">
                                <asp:CheckBox ID="CB_Tenis" runat="server" Enabled="False" />
                            </td>
                            <td class="auto-style11">
                                <asp:Label ID="Label_Tenis" runat="server" Text="Tenis"></asp:Label>
                            </td>
                            <td class="auto-style11">
                                <asp:CheckBox ID="CB_SalonMultiuso" runat="server" Enabled="False" />
                            </td>
                            <td class="auto-style11">
                                <asp:Label ID="Label_SalonMultiuso" runat="server" Text="Salon Multiuso"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style2"></td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style11">&nbsp;</td>
                            <td class="auto-style11">&nbsp;</td>
                            <td class="auto-style2"><span class="auto-style9"></td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style2"></span></span></span></td>
                        </tr>
                        <tr class="auto-style7">
                            <td class="auto-style9">
                                
                                <asp:CheckBox ID="CB_Piscina" runat="server" Enabled="False" />
                                                                                        
                            <td class="auto-style9">
                                
                                <asp:Label ID="Label_Piscina" runat="server" Text="Piscina"></asp:Label>
                                                            
                            </td>
                            <td class="auto-style9">
                                <asp:CheckBox ID="CB_Ascensor" runat="server" Enabled="False" />
                            </td>
                            <td class="auto-style9">
                                <asp:Label ID="Label_Ascensor" runat="server" Text="Ascensor"></asp:Label>
                            </td>
                            <td class="auto-style9">
                                <asp:CheckBox ID="CB_Squash" runat="server" Enabled="False" />
                            </td>
                            <td class="auto-style9">
                                <asp:Label ID="Label_Squash" runat="server" Text="Squash "></asp:Label>
                            </td>
                            <td class="auto-style9">
                                <asp:CheckBox ID="CB_Electrogeno" runat="server" Enabled="False" ForeColor="#3366CC" />
                            </td>
                            <td class="auto-style9">
                                <asp:Label ID="Label_Electrogeno" runat="server" Text="Electrogeno"></asp:Label>
                            </td>
                        </tr>
                        <tr class="auto-style7">
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                        </tr>
                        <tr class="auto-style7">
                            <td class="auto-style9">
                                <asp:CheckBox ID="CB_Golf" runat="server" Enabled="False" />
                            </td>
                            <td class="auto-style9">
                                <asp:Label ID="Label_Golf" runat="server" Text="Golf"></asp:Label>
                            </td>
                            <td class="auto-style9">
                                <asp:CheckBox ID="CB_SalaEstar" runat="server" Enabled="False" ForeColor="#3366CC" style="color: #00FF99" />
                            </td>
                            <td class="auto-style9">
                                <asp:Label ID="Label_SalaEstar" runat="server" Text="Sala Estar "></asp:Label>
                            </td>
                            <td>
                                <asp:CheckBox ID="CB_Gym" runat="server" Enabled="False" />
                            </td>
                            <td class="auto-style9">
                                <asp:Label ID="Label_GYM" runat="server" Text="GYM " style="color: #000000"></asp:Label>
                            </td>
                            <td class="auto-style9">
                                <asp:CheckBox ID="CB_Hipoteca" runat="server" Enabled="False" />
                            </td>
                            <td class="auto-style9">
                                <asp:Label ID="Label_Hipoteca" runat="server" Text="Hipoteca"></asp:Label>
                            </td>
                        </tr>
                        </table>
                </td>
                <td>
                    
            </tr>
            <tr>
                <td class="auto-style19">
                    &nbsp;</td>
                <td colspan="3" style="text-align: center">
                    &nbsp;</td>
                <td colspan="6">
                    &nbsp;</td>
                <td>
                    
                    &nbsp;</tr>
            <tr>
                <td class="auto-style19">
                    &nbsp;</td>
                <td colspan="3">
                    &nbsp;</td>
                <td colspan="6">
                    &nbsp;</td>
                <td>
                    
                    &nbsp;</tr>
            <tr>
                <td class="auto-style19">
                    &nbsp;</td>
                <td colspan="3">
                    &nbsp;</td>
                <td colspan="6">
                    &nbsp;</td>
                <td>
                    
                    &nbsp;</tr>
            <tr>
                <td class="auto-style19">
                    &nbsp;</td>
                <td colspan="3" style="text-align: center">
        <asp:Button ID="Btn_Volver" class="btn btn-full" runat="server" OnClick="Button1_Click" Text="Volver "  />
                </td>
                <td colspan="6">
                    &nbsp;</td>
                <td>
                    
                    &nbsp;</tr>
        </table>
    </div>
    <div id="divMessage" runat="server" style="display: none;">
    </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>

