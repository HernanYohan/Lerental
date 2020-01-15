<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Lerentals.index" %>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Bell Bootstrap 4 Theme</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Facebook Opengraph integration: https://developers.facebook.com/docs/sharing/opengraph -->
  <meta property="og:title" content="">
  <meta property="og:image" content="">
  <meta property="og:url" content="">
  <meta property="og:site_name" content="">
  <meta property="og:description" content="">

  <!-- Twitter Cards integration: https://dev.twitter.com/cards/  -->
  <meta name="twitter:card" content="summary">
  <meta name="twitter:site" content="">
  <meta name="twitter:title" content="">
  <meta name="twitter:description" content="">
  <meta name="twitter:image" content="">

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
</head>

<body>
    <form id="form1" runat="server">
  <!-- Page Content
    ================================================== -->
  <!-- Hero -->

  <section class="hero">
    <div class="container text-center">
      <div class="row">
        <div class="col-md-12">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <%--<asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />--%>
            <asp:Button ID="BTN_Registrarse" class="btn btn-light btn-sm" runat="server" OnClick="BTN_Registrarse_Click1" Text="Registrate" />
        </div>
      </div>

      <div class="col-md-12">
        <h1>
             IeRental
          </h1>

        <p class="tagline">
          Encuentra Tu Hogar de la manera mas facil.
            <table class="w-100">
                <tr>
                    <td>
                        <asp:DropDownList ID="tipo_inmueble" runat="server" Width="200px">
                          <asp:ListItem Selected="True" Value="0">Que Buscas?</asp:ListItem>
                          <asp:ListItem Value="1">Apartaestudio</asp:ListItem>
                          <asp:ListItem Value="2">Bodega</asp:ListItem>
                          <asp:ListItem Value="3">Cabaña</asp:ListItem>
                          <asp:ListItem Value="4">Casa</asp:ListItem>
                          <asp:ListItem Value="5">Casa Campestre</asp:ListItem>
                          <%--<asp:ListItem Value="6">Casa Lote</asp:ListItem>--%>
                          <asp:ListItem Value="7">Casa Amoblada</asp:ListItem>
                          <asp:ListItem Value="8">Departamento</asp:ListItem>
                          <asp:ListItem Value="9">Departamento Amoblado</asp:ListItem>
                          <asp:ListItem Value="10">Espacio dentro de un mall</asp:ListItem>
                          <asp:ListItem Value="11">Estacionamiento</asp:ListItem>
                          <asp:ListItem Value="12">Finca</asp:ListItem>
                          <asp:ListItem Value="13">Habitacion</asp:ListItem>
                          <asp:ListItem Value="14">Habitaciones de Hotel</asp:ListItem>
                          <asp:ListItem Value="15">Local Comercial</asp:ListItem>
                          <asp:ListItem Value="16">Oficinas</asp:ListItem>
                          <asp:ListItem Value="17">Terreno</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="tipo_actividad" runat="server">
                             <asp:ListItem Selected="True" Value="0">En Venta o Alquiler?</asp:ListItem>
                          <asp:ListItem Value="1">Venta</asp:ListItem>
                          <asp:ListItem Value="2">Alquiler</asp:ListItem>
                          <asp:ListItem Value="3">Alquiler Vacacional</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="proyecto_pais" runat="server" Width="200px">
                            <asp:ListItem Value="0">Pais ?</asp:ListItem>
                            <asp:ListItem Value="1">Colombia</asp:ListItem>
                            <asp:ListItem Value="2">Venezuela</asp:ListItem>
                            <asp:ListItem>Peru</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="proyecto_cuidad" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="proyecto_cuidad" DataValueField="proyecto_cuidad" Width="200px">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                    <td colspan="2">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:inmobiliariasConnectionString %>" SelectCommand="SELECT DISTINCT proyecto_cuidad FROM tbl_proyectos"></asp:SqlDataSource>
                    </td>
                    <td colspan="2">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                    <td colspan="2">
                        &nbsp;</td>
                    <td colspan="2">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                    <td colspan="2">
                        <asp:Button ID="ASPxButton1" class="btn btn-full" runat="server" OnClick="ASPxButton1_Click1" Text="Buscar" Height="57px" Width="183px" />
                    </td>
                    <td colspan="2">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
          <%--<asp:ListItem Value="6">Casa Lote</asp:ListItem>--%>
      </div>
    </div>

  </section>
  <!-- /Hero -->

  <!-- Header -->
        <%--<asp:ListItem Value="6">Casa Lote</asp:ListItem>--%>
      <!-- #nav-menu-container -->

        <%--<a class="btn btn-full" href="#about" id="ASPxButton1">Buscar</a>--%>
    </div>
  </header>
  <!-- #header -->

  <!-- About -->

        <%--<asp:ListItem Value="6">Casa Lote</asp:ListItem>--%>
  <!-- /About -->
  <!-- Parallax -->

        <%--<asp:ListItem Value="6">Casa Lote</asp:ListItem>--%>
  <!-- /Parallax -->
  <!-- Features -->

        <%--<asp:ListItem Value="6">Casa Lote</asp:ListItem>--%>
  <!-- /Features -->
  <!-- Call to Action -->

        <%--<header id="header">
    <div class="container">

      <div id="logo" class="pull-left">
        <a href="index.html"><img src="img/logo-nav.png" alt="" title="" /></img></a>
        <!-- Uncomment below if you prefer to use a text image -->
        <!--<h1><a href="#hero">Bell</a></h1>-->
      </div>

      <%--<nav id="nav-menu-container">
        <ul class="nav-menu">
          <li><a href="#about">About Us</a></li>
          <li><a href="#features">Features</a></li>
          <li><a href="#portfolio">Portfolio</a></li>
          <li><a href="#team">Team</a></li>
          <li class="menu-has-children"><a href="">Drop Down</a>
            <ul>
              <li><a href="#">Drop Down 1</a></li>
              <li class="menu-has-children"><a href="#">Drop Down 2</a>
                <ul>
                  <li><a href="#">Deep Drop Down 1</a></li>
                  <li><a href="#">Deep Drop Down 2</a></li>
                  <li><a href="#">Deep Drop Down 3</a></li>
                  <li><a href="#">Deep Drop Down 4</a></li>
                  <li><a href="#">Deep Drop Down 5</a></li>
                </ul>
              </li>
              <li><a href="#">Drop Down 3</a></li>
              <li><a href="#">Drop Down 4</a></li>
              <li><a href="#">Drop Down 5</a></li>
            </ul>
          </li>
          <li><a href="#contact">Contact Us</a></li>
        </ul>
      </nav>--%>
  <!-- /Call to Action -->
  <!-- Portfolio -->

        <%--<nav class="nav social-nav pull-right d-none d-lg-inline">
        <a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i class="fa fa-linkedin"></i></a> <a href="#"><i class="fa fa-envelope"></i></a>
      </nav>--%>
  <!-- /Portfolio -->
  <!-- Team -->

        <%--<section class="about" id="about">
    <div class="container text-center">
      <h2>
          About Bell Theme
        </h2>

      <p>
        Voluptua scripserit per ad, laudem viderer sit ex. Ex alia corrumpit voluptatibus usu, sed unum convenire id. Ut cum nisl moderatius, per nihil dicant commodo an. Eum tacimates erroribus ad. Atqui feugiat euripidis ea pri, sed veniam tacimates ex. Menandri
        temporibus an duo.
      </p>

      <div class="row stats-row">
        <div class="stats-col text-center col-md-3 col-sm-6">
          <div class="circle">
            <span class="stats-no" data-toggle="counter-up">232</span> Satisfied Customers
          </div>
        </div>

        <div class="stats-col text-center col-md-3 col-sm-6">
          <div class="circle">
            <span class="stats-no" data-toggle="counter-up">79</span> Released Projects
          </div>
        </div>

        <div class="stats-col text-center col-md-3 col-sm-6">
          <div class="circle">
            <span class="stats-no" data-toggle="counter-up">1,463</span> Hours Of Support
          </div>
        </div>

        <div class="stats-col text-center col-md-3 col-sm-6">
          <div class="circle">
            <span class="stats-no" data-toggle="counter-up">15</span> Hard Workers
          </div>
        </div>
      </div>
    </div>
  </section>--%>
  <!-- /Team -->
  <!-- @component: footer -->

  <section id="contact">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h2 class="section-title">Contact Us</h2>
        </div>
      </div>

      <div class="row justify-content-center">
        <div class="col-lg-3 col-md-4">
          <div class="info">
            <div>
              <i class="fa fa-map-marker"></i>
              <p>A108 Adam Street<br>New York, NY 535022</p>
            </div>

            <div>
              <i class="fa fa-envelope"></i>
              <p>info@example.com</p>
            </div>

            <div>
              <i class="fa fa-phone"></i>
              <p>+1 5589 55488 55s</p>
            </div>

          </div>
        </div>

        <div class="col-lg-5 col-md-8">
          <div class="form">
            <div id="sendmessage">Your message has been sent. Thank you!</div>
            <div id="errormessage"></div>
              <div class="form-group">
                <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
              </div>
              <div class="form-group">
                <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                <div class="validation"></div>
              </div>
              <div class="form-group">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                <div class="validation"></div>
              </div>
              <div class="form-group">
                <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                <div class="validation"></div>
              </div>
              <div class="text-center"><button type="submit">Send Message</button></div>
          </div>
        </div>

      </div>
    </div>
  </section>

  <footer class="site-footer">
    <div class="bottom">
      <div class="container">
        <div class="row">

          <div class="col-lg-6 col-xs-12 text-lg-left text-center">
            <p class="copyright-text">
              © BELL Theme
            </p>
            <div class="credits">
              <!--
                All the links in the footer should remain intact.
                You can delete the links only if you purchased the pro version.
                Licensing information: https://bootstrapmade.com/license/
                Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Bell
              -->
             Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
            </div>
          </div>

          <div class="col-lg-6 col-xs-12 text-lg-right text-center">
            <ul class="list-inline">
              <li class="list-inline-item">
                <a href="index.html">Home</a>
              </li>

              <li class="list-inline-item">
                <a href="#about">About Us</a>
              </li>

              <li class="list-inline-item">
                <a href="#features">Features</a>
              </li>

              <li class="list-inline-item">
                <a href="#portfolio">Portfolio</a>
              </li>

              <li class="list-inline-item">
                <a href="#team">Team</a>
              </li>

              <li class="list-inline-item">
                <a href="#contact">Contact</a>
              </li>
            </ul>
          </div>

        </div>
      </div>
    </div>
  </footer>
  <a class="scrolltop" href="#"><span class="fa fa-angle-up"></span></a>


  <!-- Required JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/superfish/hoverIntent.js"></script>
  <script src="lib/superfish/superfish.min.js"></script>
  <script src="lib/tether/js/tether.min.js"></script>
  <script src="lib/stellar/stellar.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="lib/counterup/counterup.min.js"></script>
  <script src="lib/waypoints/waypoints.min.js"></script>
  <script src="lib/easing/easing.js"></script>
  <script src="lib/stickyjs/sticky.js"></script>
  <script src="lib/parallax/parallax.js"></script>
  <script src="lib/lockfixed/lockfixed.min.js"></script>

  <!-- Template Specisifc Custom Javascript File -->
  <script src="js/custom.js"></script>

  <script src="contactform/contactform.js"></script>

    </form>

</body>
</html>

