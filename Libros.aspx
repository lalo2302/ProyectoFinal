﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Libros.aspx.cs" Inherits="Libros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Haquers - Proyecto Final</title>
    <link rel="stylesheet" href="css/bookcss.css"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/ionicons.min.css"/>
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <script>
        $(document).ready(function () {
            function SetLibro() {
                var idLibro_set = localStorage.getItem("idLibroOut");
                MiWebService.SetLibro(idLibro_set, callbackSetLibro);
            };
            SetLibro();
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
                            <a href="http://localhost/ProyectoFinal/Default.aspx#home">Inicio</a>
                        </li>
                        <li>
                            <a href="http://localhost/ProyectoFinal/Default.aspx#featured">Recomendados</a>
                        </li>
                        <li>
                            <a href="http://localhost/ProyectoFinal/Default.aspx#all">Todos</a>
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

        <div class="content">
            <div class="col-sm-4">
                    <div class="left">
                        <div class="comments">
                            <button>Enviar</button>
                            <textarea placeholder="INGRESAR COMENTARIO."></textarea>
                        </div>
                        <div id="cover">
                        
                        </div>
                    </div>
            </div>
            <div class="col-sm-8 contenido">
                <div class="titulo">
                
                </div>
                <div class="autor">
                
                </div>
                <div class="editorial">
                
                </div>
                <div class="genero">

                </div>
                <div class="public">

                </div><br />
                <div class="sinopsis">

                </div> <br />
                <div class="autorensayo">

                </div>
                <div class="ensayo">

                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </form>
</body>
</html>
