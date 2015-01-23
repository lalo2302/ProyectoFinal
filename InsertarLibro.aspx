<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsertarLibro.aspx.cs" Inherits="InsertarLibro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Haquers - Proyecto Final</title>
    <link rel="shortcut icon" href="img/faviconBlanco.ico"/>
    <link rel="stylesheet" href="css/css.css"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/ionicons.min.css"/>
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
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
            </ul>
            <a id="show-search">
                <input type="text" id="cuadroBusqueda" class="search-form" placeholder="Buscar" onkeydown="return processKey(event)"/>
                <input type="submit" value="Save Earth" style="display: none"/>
                <i class="ion-search"></i>
            </a>
        </div>
    </nav>

    </div>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </form>
</body>
</html>
