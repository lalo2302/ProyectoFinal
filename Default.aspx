<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Haquers - Proyecto Final</title>
    <link rel="shortcut icon" href="img/faviconBlanco.ico"/>
    <link rel="stylesheet" href="css/css.css"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/ionicons.min.css"/>
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <script>
        //Regresar los 25 libros
        $(document).ready(function () {
            function ObtenerLibros() {
                MiWebService.ObtenerLibros(ObtenerLibroscallback);
            };
            ObtenerLibros();
        });
        
    </script>
</head> 
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Services>
                <asp:ServiceReference Path="http://localhost/WebSite1/MiWebService.asmx" />
            </Services>
        </asp:ScriptManager>
        <nav class="menu">
        <div class="logo">
            <a href="Default.aspx"><img src="img/haquerswhite.png" width="112px" /></a>
        </div>
        <div class="right">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown">
                        Ir a
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#home" class="scroll">Inicio</a>
                        </li>
                        <li>
                            <a href="#featured" class="scroll">Recomendados</a>
                        </li>
                        <li>
                            <a href="#all" class="scroll">Todos</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle scroll" data-toggle="dropdown">
                        Géneros
                    </a>
                    <ul class="dropdown-menu" role="menu" id="listaGeneros">
                        
                    </ul>
                </li>
            </ul>
            <a id="show-search">
                <input id="cuadroBusqueda" type="text" class="search-form" placeholder="Buscar"/>
                <i class="ion-search"></i>
            </a>
        </div>
    </nav>

        <div id="home">
            <div class="col-sm-6 col-sm-offset-3 mt-100">
                <div class="title">
                    <p>God is in the code</p><p>and the code is in the books</p>
                </div>
            </div>
        </div>

        <div id="featured">
            <div class="container box">
                <div class="col-sm-12">
                    <div class="title">
                        Recomendados
                    </div>
                </div>
                <div class="col-sm-10 col-sm-offset-1">
                    <div class="col-sm-4 text-center rec" id="24">
                        <a href="Libros.aspx">
                        <img src="covers/451.jpg" WIDTH="100%"/>
                        <h4 class="high">Fahrenheit 451 - Ray Bradbury</h4>
                        <span>Carlos Rodriguez</span>
                        </a>
                    </div>
                    <div class="col-sm-4 text-center rec" id="5">
                        <a href="Libros.aspx">
                        <img src="covers/gatsby.jpg" WIDTH="100%"/>
                        <h4 class="high">The Great Gatsby - F. Scott Fitzgerald</h4>
                        <span>Jorge Vázquez Mellado</span>
                        </a>
                    </div>
                    <div class="col-sm-4 text-center rec" id="7">
                        <a href="Libros.aspx">
                        <img src="covers/efectoFacebook.jpg" WIDTH="100%"/>
                        <h4 class="high">El Efecto Facebook - David Kirkpatrick</h4>
                        <span>Eduardo Aguilera</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-sm-12">
            <hr/>
        </div>

        <div id="all">
            <div class="container box">
                <div class="col-sm-12">
                    <div class="title">
                        Todos los libros
                    </div>
                </div>

                <div class="col-sm-10 col-sm-offset-1 all">
                </div>
                <div class="col-sm-12" id="agregarLibro">
                    <a href="InsertarLibro.aspx" class="btn btn-default btn-lg" role="button">Agregar Libro</a>
                </div>
            </div>
        </div>
        


    </div>        
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </form>

</body>
</html>
