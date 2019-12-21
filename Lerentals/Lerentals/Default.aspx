<%@ Page Language="C#"  AutoEventWireup="true"  CodeBehind="Default.aspx.cs" Inherits="Lerentals.Default" %>

<!DOCTYPE html>

<html lang="en">

<head>

     <meta charset="utf-8">
  <title>IeRental</title>
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
    <style type="text/css">
        .auto-style6 {
            width: 123px;
        }
        .auto-style7 {
            display: table;
            position: relative;
            background-size: cover;
            color: #fff;
            width: 100%;
            height: 277px;
            left: 0px;
            top: 0px;
            padding: 75px 0;
            background-image: url('img/cover.jpg');
        }
        .auto-style8 {
            height: 89px;
        }
        .auto-style10 {
            width: 100%;
            max-width: 1140px;
            min-width: 992px;
            height: 64px;
            margin-left: auto;
            margin-right: auto;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style11 {
            width: 163px;
        }
        .auto-style12 {
            width: 56px;
        }
        .auto-style13 {
            width: 41px;
        }
        .auto-style14 {
            width: 48%
        }
        .auto-style15 {
            width: 28px;
        }
        .auto-style16 {
            width: 27px;
        }
        .auto-style17 {
            text-align: left;
            width: 27px;
        }
        .auto-style18 {
            font-size: xx-large;
        }
        .auto-style19 {
            width: 28px;
            height: 44px;
        }
        .auto-style20 {
            width: 123px;
            height: 44px;
        }
        .auto-style21 {
            height: 44px;
        }
        .auto-style22 {
            width: 27px;
            height: 44px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
  <!-- Page Content
     
    ================================================== -->
  <!-- Hero -->

  <section class="auto-style7">
    <div class="container text-center">
      <div class="row">
        <div class="col-md-12">
            <%-- <a class="hero-brand" href="index.html" title="Home"><img alt="Bell Logo" src="img/logo.png"></a>--%>
        </div>
      </div>

      <div class="col-md-12">
        <h1>
            IeRental
          </h1>

        <p class="tagline">
          Encuentra Tu Hogar de la manera mas facil.
        </p>
          <%--<a class="btn btn-full" href="#about">Get Started Now</a>--%>

      </div>
    </div>

  </section>
  <!-- /Hero -->

  <!-- Header -->
  <header id="header" class="auto-style8">
    <div class="auto-style10">

      <!-- #nav-menu-container -->

      
        <table class="w-100">
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="auto-style11">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Estas Buscando"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="tipo_inmueble" runat="server"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Para"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="proyecto_cuidad" runat="server"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="En"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="tipo_actividad" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
  </header>
  <!-- #header -->

  <!-- About -->

  
  <!-- /About -->
  <!-- Parallax -->

  <!-- /Parallax -->
  <!-- Features -->

  
  <!-- /Features -->
  <!-- Call to Action -->

  
  <!-- /Call to Action -->
  <!-- Portfolio -->

  
  <!-- /Team -->
  <!-- @component: footer -->

  <section id="contact">
    <div class="container">
      <div class="row">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text=" Inmuebles Encontrados " CssClass="auto-style18"></asp:Label>
      </div>

      <div class="row justify-content-center">
          <table class="w-100">
              <tr>
                  <td style="vertical-align: top; text-align: left">
                      <table class="auto-style14">
                          <tr>
                              <td class="auto-style15">
                                  &nbsp;</td>
                              <td class="auto-style6">
                                  <asp:Label ID="Label2" runat="server" ForeColor="#199EB8" Text="Habitaciones"></asp:Label>
                              </td>
                              <td>
                                  <asp:DropDownList ID="rooms" runat="server" Width="140px">
                                      <asp:ListItem Selected="True" Value="0">Seleccione</asp:ListItem>
                                      <asp:ListItem>1</asp:ListItem>
                                      <asp:ListItem>2</asp:ListItem>
                                      <asp:ListItem>3</asp:ListItem>
                                      <asp:ListItem>4</asp:ListItem>
                                      <asp:ListItem>5</asp:ListItem>
                                      <asp:ListItem>6</asp:ListItem>
                                      <asp:ListItem>7</asp:ListItem>
                                      <asp:ListItem>8</asp:ListItem>
                                      <asp:ListItem>9</asp:ListItem>
                                      <asp:ListItem>10</asp:ListItem>
                                      <asp:ListItem>11</asp:ListItem>
                                  </asp:DropDownList>
                              </td>
                              <td class="auto-style16">
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td class="auto-style15">
                                  &nbsp;</td>
                              <td class="auto-style6">
                                  &nbsp;</td>
                              <td>
                                  &nbsp;</td>
                              <td class="auto-style16">
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td class="auto-style15">
                                  &nbsp;</td>
                              <td class="auto-style6">
                                  <asp:Label ID="Label6" runat="server" ForeColor="#199EB8" Text="Baños"></asp:Label>
                              </td>
                              <td>
                                  <asp:DropDownList ID="baths" runat="server" Width="140px">
                                      <asp:ListItem Selected="True" Value="0">Seleccione</asp:ListItem>
                                      <asp:ListItem>1</asp:ListItem>
                                      <asp:ListItem>2</asp:ListItem>
                                      <asp:ListItem>3</asp:ListItem>
                                      <asp:ListItem>4</asp:ListItem>
                                      <asp:ListItem>5</asp:ListItem>
                                      <asp:ListItem>6</asp:ListItem>
                                      <asp:ListItem>7</asp:ListItem>
                                      <asp:ListItem>8</asp:ListItem>
                                      <asp:ListItem>9</asp:ListItem>
                                      <asp:ListItem>10</asp:ListItem>
                                      <asp:ListItem>11</asp:ListItem>
                                  </asp:DropDownList>
                              </td>
                              <td class="auto-style16">
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td class="auto-style15">
                                  &nbsp;</td>
                              <td class="auto-style6">
                                  &nbsp;</td>
                              <td>
                                  &nbsp;</td>
                              <td class="auto-style16">
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td class="auto-style15">
                                  &nbsp;</td>
                              <td class="auto-style6">
                                  <asp:Label ID="Label4" runat="server" ForeColor="#199EB8" Text="Area M2"></asp:Label>
                              </td>
                              <td>
                                  <asp:DropDownList ID="mts2" runat="server" Width="140px">
                                      <asp:ListItem Selected="True">Seleccione</asp:ListItem>
                                      <asp:ListItem Value="1">- 08</asp:ListItem>
                                      <asp:ListItem Value="2">09 - 15</asp:ListItem>
                                      <asp:ListItem Value="3">16 - 24</asp:ListItem>
                                      <asp:ListItem Value="4">25 - 35</asp:ListItem>
                                      <asp:ListItem Value="5">36 - 55</asp:ListItem>
                                      <asp:ListItem Value="6">56 - 75</asp:ListItem>
                                      <asp:ListItem Value="7">76 - 90</asp:ListItem>
                                      <asp:ListItem Value="8">91 - 120</asp:ListItem>
                                      <asp:ListItem Value="9">121- 140</asp:ListItem>
                                      <asp:ListItem Value="10">+ 140 </asp:ListItem>

                                         </asp:DropDownList>
                              </td>
                              <td class="auto-style16">
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td class="auto-style15">
                                  &nbsp;</td>
                              <td class="auto-style6">
                                  &nbsp;</td>
                              <td>
                                  &nbsp;</td>
                              <td class="auto-style16">
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td class="auto-style15">
                                  &nbsp;</td>
                              <td class="auto-style6">
                                  <asp:Label ID="Label8" runat="server" ForeColor="#199EB8" Text="Antiguedad"></asp:Label>
                              </td>
                              <td>
                                  <asp:DropDownList ID="antiguedad" runat="server" DataSourceID="SqlDataSource1" DataTextField="antiguedad" DataValueField="antiguedad" Width="140px">
                                  </asp:DropDownList>
                                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:inmobiliariasConnectionString %>" SelectCommand="SELECT distinct antiguedad  FROM dbo.v_matrix_basic_inmuebles where [bien_status]='Disponible'"></asp:SqlDataSource>
                              </td>
                              <td class="auto-style16">
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td class="auto-style15">&nbsp;</td>
                              <td class="auto-style6">&nbsp;</td>
                              <td>
                                  &nbsp;</td>
                              <td class="auto-style16">
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td class="auto-style19"></td>
                              <td class="auto-style20"></td>
                              <td class="auto-style21">
                                  <asp:Button ID="Btn_filter" class="btn btn-full"  runat="server" Text="Filtrar" Width="140px" OnClick="Btn_filter_Click" Height="48px" />
                              </td>
                              <td class="auto-style22">
                                  </td>
                          </tr>
                          <tr>
                              <td class="auto-style15">&nbsp;</td>
                              <td class="auto-style6">&nbsp;</td>
                              <td>
                                  &nbsp;</td>
                              <td class="auto-style16">
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td colspan="3" class="text-left">
                                  &nbsp;</td>
                              <td class="auto-style17">
                                  &nbsp;</td>
                          </tr>
                      </table>
                  </td>
                  <td style="vertical-align: top">

                <script runat="server">

  void GridView1_RowCommand(Object sender, GridViewCommandEventArgs e)
  {
    // If multiple buttons are used in a GridView control, use the
    // CommandName property to determine which button was clicked.
    if(e.CommandName=="Increase")
    {
      // Convert the row index stored in the CommandArgument
      // property to an Integer.
      int index = Convert.ToInt32(e.CommandArgument);

      // Retrieve the row that contains the button clicked 
      // by the user from the Rows collection.      
      GridViewRow row = GridView1.Rows[index];

      // Calculate the new price.
      Label listPriceTextBox = (Label)row.FindControl("PriceLabel");
      listPriceTextBox.Text = (Convert.ToDouble(listPriceTextBox.Text) * 1.05).ToString();     

      // Update the row.
      GridView1.UpdateRow(index, false);
    }
  }
</script>
             
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderStyle="None" BorderWidth="0px" CellPadding="3" Font-Size="8pt" style="margin-right: 0px" Width="1009px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="ID_linea">
                    <AlternatingRowStyle Font-Size="8pt" />
                    <Columns>
                        
                        <asp:ImageField DataImageUrlField="foto" HeaderText="Foto">   
                            <ControlStyle Height="130px" Width="130px" />
                            <ItemStyle Width="130px" Height="130px" /> </asp:ImageField>
                        <asp:BoundField DataField="proyecto_cuidad" HeaderText="Ciudad" />
                        <asp:BoundField DataField="Proyecto_dire" HeaderText="Direccion" > <ControlStyle Width="120px" /> <HeaderStyle HorizontalAlign="Center" />  <ItemStyle HorizontalAlign="Left" Width="80px" />     </asp:BoundField>
                        <asp:BoundField DataField="moneda" HeaderText="Moneda" >      <ControlStyle Width="200px" /> <HeaderStyle HorizontalAlign="Center" /> <ItemStyle HorizontalAlign="Center" Width="200px" />  </asp:BoundField>
                        <asp:BoundField DataField="valo_inmueble" HeaderText="Valor" > <ControlStyle Width="200px" />   <HeaderStyle HorizontalAlign="Center" /> <ItemStyle HorizontalAlign="Left" Width="200px" /> </asp:BoundField>
                        <asp:BoundField DataField="ID_linea" HeaderText="Orden" >   </asp:BoundField>
                        <asp:CommandField ButtonType="Button"   InsertVisible="False"  SelectText="Detalle" ShowCancelButton="False" ShowSelectButton="True" >    
                        <ControlStyle Width="100px" />

                        <ItemStyle Width="50px" HorizontalAlign="Center" />
                        </asp:CommandField>
                    </Columns>
                    <EditRowStyle Font-Size="8pt" />
                    <EmptyDataRowStyle Font-Size="8pt" />
                    <FooterStyle BackColor="White" Font-Size="8pt" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                    <PagerStyle BackColor="White" Font-Size="8pt" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle Font-Size="8pt" ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" Font-Size="8pt" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" Font-Size="8pt" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" Font-Size="8pt" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" Font-Size="8pt" />
                </asp:GridView>
                  </td>


          </table>
         

  </section>

  <footer class="site-footer">
    <div class="bottom">
      <div class="container">
        <div class="row">

<%--          <div class="col-lg-6 col-xs-12 text-lg-left text-center">
            <p class="copyright-text">
              © Astic
            </p>
            <div class="credits">
              <!--
                All the links in the footer should remain intact.
                You can delete the links only if you purchased the pro version.
                Licensing information: https://bootstrapmade.com/license/
                Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Bell
              -->
             Designed by <a href="https://astic.com.co/">Astic</a>
            </div>
          </div>

          <%--<div class="col-lg-6 col-xs-12 text-lg-right text-center">
            <ul class="list-inline">
              <li class="list-inline-item">
                <a href="index.aspx">Inicio</a>
              </li>

              <li class="list-inline-item">
                <a href="#about">Nosotros</a>
              </li>                  
              <li class="list-inline-item">
                <a href="#contact">Contacto</a>
              </li>
            </ul>
          </div>--%>

   <%--     </div>
      </div>
    </div>
  </footer>
  <a class="scrolltop" href="#"><span class="fa fa-angle-up"></span></a>--%>&nbsp;<!-- Required JavaScript Libraries --><script src="lib/jquery/jquery.min.js"></script><script src="lib/jquery/jquery-migrate.min.js"></script><script src="lib/superfish/hoverIntent.js"></script><script src="lib/superfish/superfish.min.js"></script><script src="lib/tether/js/tether.min.js"></script><script src="lib/stellar/stellar.min.js"></script><script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script><script src="lib/counterup/counterup.min.js"></script><script src="lib/waypoints/waypoints.min.js"></script><script src="lib/easing/easing.js"></script><script src="lib/stickyjs/sticky.js"></script><script src="lib/parallax/parallax.js"></script><script src="lib/lockfixed/lockfixed.min.js"></script><!-- Template Specisifc Custom Javascript File --><script src="js/custom.js"></script><script src="contactform/contactform.js"></script>
            <%--<asp:Button ID="BT_Inico" runat="server" Text="Inico" />--%>
               
               <asp:Button ID="BT_Inico" HorizontalAlign="Center"  class="btn btn-full" runat="server" OnClick="BT_Inico_Click1" Text="Inicio" Height="57px" Width="183px" />
    </form>

            


</body>
</html>
