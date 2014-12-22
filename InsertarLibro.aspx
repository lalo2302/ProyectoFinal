<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsertarLibro.aspx.cs" Inherits="InsertarLibro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    </div>
    </form>
</body>
</html>
