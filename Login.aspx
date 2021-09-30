<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="KioskoUniversidadSalvatore.Login" Async="true"%>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Iniciar Sesion - Universidad Salvatore</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=ABeeZee">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="assets/css/Animated-CSS-Waves-Background-SVG.css">
    <link rel="stylesheet" href="assets/css/sidebar-1.css">
    <link rel="stylesheet" href="assets/css/sidebar.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>



<body  class="overflow-hidden"><div class="" >

    <ul style="background-color:#ff6a00" class="circles">
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
            </ul>
    </div >
    <div class="row" style="width: auto;">
        <div class="col flex-shrink-1" style="padding: 10vh 15vw;">
            <div class="card shadow-lg" style="background: rgba(76, 106, 205);border-radius: 20px;border-width: 1px;border-color: rgba(0,0,0,0);">
                <div class="card-body" style="background: transparent;">
                    <!-- Start: 1 Row 2 Columns -->
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 align-self-center"><img class="img-fluid" src="assets/img/logo.png"></div>
                            <div class="col">
                                <form id="form1" runat="server">
                                    <div class="text-center" style="margin: 2vh 0vh;">
                                        <div>
                                            <h4 style="color:white">Email</h4>
                                            <asp:TextBox ID="EmailUsuarioTxb" runat="server" TextMode="Email" BorderStyle="None"></asp:TextBox>
                                        </div>
                                        <div style="margin: 2vh 0vh;">
                                            <h4 style="color:white">Contraseña</h4>
                                            <asp:TextBox ID="ContrasenaTxb" runat="server" TextMode="Password" BorderStyle="None"></asp:TextBox>
                                        </div>
                                        <asp:Button ID="IniciarSesion" runat="server" Text="Iniciar Sesion" CssClass="btn btn-primary" Width ="182px" OnClick="IniciarSesion_Click" BackColor="#28A745" />
                                    </div>
                                    <div class="text-center">
                                        <asp:Literal ID="LitMsg" runat="server"></asp:Literal>
                                    </div>
                                    <hr>
                                    <p  style="text-align: center; color:white">Si has olvidado tu contraseña, por favor acude a ventanilla con tu credencial.</p>
                                </form>
                            </div>
                        </div>
                    </div><!-- End: 1 Row 2 Columns -->
                </div>
            </div>
        </div>
    </div>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>

    </body>
</html>
