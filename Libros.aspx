<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Libros.aspx.cs" Inherits="Libros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Haquers - Proyecto Final - Libro</title>
    <link rel="shortcut icon" href="img/faviconBlanco.ico"/>
    <link href="css/bookcss.css" rel="stylesheet" />
    <link href="css/comentarios.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/ionicons.min.css"/>
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="main.js"></script>
    <script>
   
        //Cargar comentarios
        $(document).ready(function () {

            function callbackSetLibro(msg) {
                var Libro = msg;
                $(".compra").append("<a href='" + Libro.Compra + "' target='_blank'><img src='img/amazon.png' width='20%'></a>");
                    $(".titulo").append("<h1>" + Libro.Titulo + "</h1>");
                    $(".autor").append("<h2>" + Libro.Autor + "</h2>");
                    $(".editorial").append("<h4>" + Libro.Editorial + "</h4>");
                    $(".genero").append("<h4>" + Libro.Genero + "</h4>");
                    $(".public").append("<h4 >" + Libro.Publicacion + "</h4>");
                    $(".sinopsis").append("<b>Sinopsis:</b><br>" + Libro.Sinopsis);
                    $(".autorensayo").append("<h2>" + Libro.AutorEnsayo + "<h2>");
                    $(".ensayo").append("<b>Ensayo:</b><br>" + Libro.Ensayo);
                $(".topleft").append('<div class="cover" id="' + Libro.IDLibro + '"><img src="' + Libro.Portada + '" width="100%"/></div>')
            };

            function SetLibro() {
                var idLibro_set = localStorage.getItem("idLibroOut");
                MiWebService.SetLibro(idLibro_set, callbackSetLibro);
            };
            
            SetLibro();

        function callbackObtenerComentarios(msgb) {
            var coms = JSON.parse(msgb);
            for (var i = 0; i < coms.length; i++) {
                $(".com_sec").append("<div class='mostrar_comentarios'>" + coms[i].Com + "</div>")
            };
        };

        function ObtenerComentarios() {
            var idLibro_comentario = $(".cover").attr("id");
            MiWebService.ObtenerComentarios(idLibro_comentario, callbackObtenerComentarios);
        };
        
            setTimeout(ObtenerComentarios, 200);

        });

        //Guardar Comentario
        function GuardarComentario() {
            var com = $.trim($("textarea").val());
            var idL = $(".cover").attr("id");
            if (com != "") {
                var Comentario = {
                    "idLibro": idL,
                    "Com": com,
                };
                MiWebService.GuardarComentario(JSON.stringify(Comentario));
                location.reload();
            }
        };

        function buscar() {
            var busqueda = $("#cuadroBusqueda").val();
            localStorage.setItem("busqueda", busqueda);
            window.location.href = "http://localhost/ProyectoFinal/Busqueda.aspx";
            return false;
        }

        function processKey(e) {
            if (null == e)
                e = window.event;
            if (e.keyCode == 13) {
                buscar();
                return false;
            }
        }

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
            </ul>
            <a id="show-search">
                <input type="text" id="cuadroBusqueda" class="search-form" placeholder="Buscar" onkeydown="return processKey(event)"/>
                <input type="submit" value="Save Earth" style="display: none"/>
                <i class="ion-search"></i>
            </a>
        </div>
    </nav>

        <div class="content">
            <div class="col-sm-4">
                    <div class="left">
                        <div class="comments">
                            <input type="button" id="comment_button" onclick="GuardarComentario()" value="Enviar" />
                            <textarea name="textarea" placeholder="INGRESAR COMENTARIO."></textarea>
                        </div>
                        <div class="topleft">
                        
                        </div>
                    </div>
            </div>
            <div class="col-sm-8 contenido">
                <div class="titulo">
                
                </div>
                <div class="compra">

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
                <br />
                <b>Comentarios:</b>
                <div class="com_sec">
                </div>
                
            </div>
        </div>
    </div>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </form>
</body>
</html>
