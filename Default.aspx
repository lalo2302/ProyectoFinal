﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Haquers - Proyecto Final</title>
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

            //function prueba() {
            //    var cualLibro = "Prueba exitosa";
            //    localStorage.setItem("cualLibro", cualLibro);
            //}
            //prueba();
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
                <input type="text" class="search-form" placeholder="Buscar"/>
                <i class="ion-search"></i>
            </a>
        </div>
    </nav>

        <div id="home">
            <div class="col-sm-6 col-sm-offset-3 mt-100">
                <div class="title">
                    "Para que tomar y manejar, si puedes leer y volar"
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
                    <div class="col-sm-4 text-center">
                        <img src="img/r1.jpg" WIDTH="100%" alt=""/>
                        <h4 class="high">Taken</h4>
                        <span>Un bato</span>
                    </div>
                    <div class="col-sm-4 text-center prueba">
                        <img src="img/r2.png" WIDTH="100%" alt=""/>
                        <a><h4 class="high">Hunger Games</h4></a>
                        <span>Un bato</span>
                    </div>
                    <div class="col-sm-4 text-center">
                        <img src="img/r3.jpg" WIDTH="100%" alt=""/>
                        <h4 class="high">Twilight</h4>
                        <span>Un bato</span>
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
            </div>
        </div>


    </div>        
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
        
    </form>

</body>
</html>
