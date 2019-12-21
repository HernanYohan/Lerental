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
        .auto-style6 {
            width: 681px;
        }
        .auto-style7 {
            color: #000000;
        }
        .auto-style8 {
            width: 568px;
        }
        .auto-style9 {
            width: 681px;
            height: 26px;
        }
        .auto-style10 {
            width: 270px;
        }
        .auto-style11 {
            height: 26px;
        }
        .auto-style12 {
            width: 568px;
            height: 26px;
        }
        .auto-style13 {
            width: 270px;
            height: 26px;
        }
        .auto-style14 {
            color: #000000;
            width: 64px;
        }
        .auto-style15 {
            color: #3366CC;
            height: 20px;
        }
        .auto-style16 {
            color: #3366CC;
            font-size: xx-large;
            height: 20px;
        }
        .auto-style17 {
            color: #3366CC;
            height: 20px;
            width: 247px;
        }
        .auto-style18 {
            color: #3366CC;
            font-size: xx-large;
            width: 247px;
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
                <td class="auto-style5" colspan="15">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ficha tecnica del inmueble&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style16">
                    </td>
                <td class="auto-style17" colspan="3">
                    &nbsp;</td>
                <td class="auto-style15" colspan="3">
                    &nbsp;</td>
                <td class="auto-style15" colspan="3">
                    &nbsp;</td>
                <td class="auto-style15" colspan="3">
                    &nbsp;</td>
                <td class="auto-style15" colspan="3">
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
                <td class="auto-style14" colspan="5">
                    <i class="fa fa-address-book-o fa-2x" aria-hidden="true" style="margin-left: 5px; width: 1px;"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="L_Direccion" runat="server"></asp:Label>
                </td>
                <td class="auto-style7" colspan="4">
                    <i class="fa fa-home fa-2x" aria-hidden="true" style="margin-left: 3px; width: 0px;"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="L_refInm" runat="server"></asp:Label>
                </td>
                <td class="auto-style7" colspan="4">
                    <i class="fa fa-id-badge fa-2x" aria-hidden="true" style="width: 5px; margin-left: 4px; margin-right: 0px"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="L_CodInmueble" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="Label_Valor" runat="server" Text="Valor : "></asp:Label>
                    <asp:Label ID="L_Valor" runat="server"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:Label ID="Label_Moneda" runat="server" Text="Moneda :"></asp:Label>
                    <asp:Label ID="L_moneda" runat="server"></asp:Label>
                </td>
                <td class="auto-style14" colspan="5">
                    <asp:Label ID="Label_Mts2" runat="server" Text="Mts2 :"></asp:Label>
                    <asp:Label ID="L_Mts2" runat="server"></asp:Label>
                </td>
                <td class="auto-style7" colspan="4">
                    <asp:Label ID="Label_Habitaciones" runat="server" Text="Habitaciones :"></asp:Label>
                    <asp:Label ID="L_habitaciones" runat="server"></asp:Label>
                </td>
                <td class="auto-style7" colspan="4">
                    &nbsp;<i class="fa fa-bath fa-2x" aria-hidden="true" style="width: 0px; margin-left: 2px; margin-right: 0px"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="L_baños" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style7" colspan="15">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5" rowspan="11">
                    &nbsp;</td>
                <td class="auto-style18" colspan="3" rowspan="11">
                    <div id="divImageSlider" runat="server" class="flexslider">
                    </div>
                </td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td colspan="11" class="auto-style6">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td colspan="11" class="auto-style6">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Caracteristicas </td>
                <tr>
                <td class="auto-style12">
                    </td>
                <td class="auto-style12">
                    </td>
                <td class="auto-style9">
                    </td>
                <td colspan="2" class="auto-style9">
                    </td>
                <td class="auto-style13">
                    </td>
                <td class="auto-style9">
                    </td>
                <td colspan="2" class="auto-style9">
                    </td>
                <td class="auto-style9">
                    </td>
                <td class="auto-style9">
                    </td>
                <td class="auto-style9">
                    </td>
                <tr>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style8">
                    <asp:CheckBox ID="CB_Garaje" runat="server" Enabled="False" />
                    </td>
                <td class="auto-style6">
                    <i class="fa fa-car fa-2x" aria-hidden="true" style="width: 6px; margin-left: 7px"></i></td>
                <td colspan="2" class="auto-style6">
                    <asp:CheckBox ID="CB_SalaJuego" runat="server" Enabled="False" />
                    </td>
                <td class="auto-style10">
                    <i class="fa fa-gamepad fa-2x" aria-hidden="true" style="width: 1px; height: 19px; margin-left: 4px"></i></td>
                <td class="auto-style6">
                    <asp:CheckBox ID="CB_Caldera" runat="server" Enabled="False" />
                    </td>
                <td colspan="2" class="auto-style6">
                     <i class="fa fa-fire fa-2x" aria-hidden="true" style="width: 6px; margin-left: 5px; margin-right: 0px"></i></td>
                <td class="auto-style6">
                    <asp:CheckBox ID="CB_ZonaBBQ" runat="server" Enabled="False" />
                    </td>
                <td class="auto-style6">
                    <i class="fa fa-cutlery fa-2x" aria-hidden="true" style="width: 6px; margin-left: 8px"></i>
                    </td>
                <tr>
                <td class="auto-style9">
                    &nbsp;</td>
                <td colspan="11" class="auto-style11">
                    </td>
                <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td colspan="11" class="auto-style6">
                    &nbsp;</td>
                <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td colspan="11" class="auto-style6">
                    &nbsp;</td>
                <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td colspan="11" class="auto-style6">
                    &nbsp;</td>
                <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td colspan="11" class="auto-style6">
                    &nbsp;</td>
                <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td colspan="11" class="auto-style6">
                    &nbsp;</td>
                <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                

                <td colspan="11" class="auto-style6">
                    &nbsp;</td>
                

                    <table class="w-100">
    </div>
    <div id="divMessage" runat="server" style="display: none;">
    </div>
    </form>
</body>
</html>

