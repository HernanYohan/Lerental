<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sliderLerental.aspx.cs" Inherits="Lerentals._default" %>

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
        


        .auto-style6 {
            font-size: xx-large;
            color: #3366CC;
        }
                


        .auto-style9 {
            color: #000000;
        }
                        


        .auto-style13 {
            height: 49px;
        }
        .auto-style14 {
            height: 49px;
            font-size: x-large;
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
                


        .banner-1-chrome {}
        


        .auto-style20 {
            height: 49px;
            width: 150px;
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
                <td class="auto-style14" colspan="10">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">
                    &nbsp;</td>
                <td class="auto-style13">
                    <i class="fa fa-home fa-2x" aria-hidden="true" style="margin-left: 6px"></i> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="proyecto_cuidad" runat="server"></asp:Label>
                </td>
                <td class="auto-style20" colspan="4">
                               
                    <span class="auto-style9"><i aria-hidden="true" class="fa fa-address-book-o fa-2x" style="margin-left: 1px" ></i> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="L_DireccionDes" runat="server"></asp:Label>
                    </span>
                            </td>
                <td class="auto-style13" colspan="2">
                               <i class="fa fa-address-book fa-2x" aria-hidden="true" style="width: 2px; margin-left: 3px"></i> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="L_Direccion" runat="server"></asp:Label>
                            </td>
                <td class="auto-style13" colspan="2">
                                <i class="fa fa-home fa-2x" aria-hidden="true" style="margin-left: 0px; margin-right: 0px"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="L_refInm" runat="server"></asp:Label>
                            </td>
                <td class="auto-style13">
                                <i class="fa fa-id-badge fa-2x" aria-hidden="true" style="margin-left: 4px"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                <td class="auto-style20" colspan="4">
                               
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
                                &nbsp;<i class="fa fa-bath fa-2x" aria-hidden="true" style="margin-left: 3px; margin-right: 0px"></asp:Label>
                                </i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="L_baños" runat="server"></asp:Label>
