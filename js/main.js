//Lista de libros
var ListaDeLibros;

//Llamar a todos los libros
function ObtenerLibroscallback(msg) {
    var Libros = JSON.parse(msg);
    ListaDeLibros = Libros;
    var Generos = ["Todos"];
    var link_libro ="a href='Libros.aspx'"
    for (var i = 0; i < ListaDeLibros.length; i++) {
        // append de los libros
        $(".all").append('<div class="col-sm-3 separacion cuadroLibro ' + ListaDeLibros[i].genero + '" id="' + ListaDeLibros[i].idLibro + '">\n<div class="book">\n<' + link_libro + '><img src="'
                        + ListaDeLibros[i].portada + '" width="100%" height="300px" class="image"/></a>\n<div class="inner-book">\n<' + link_libro + 'class="nombreLibro">'
                        + ListaDeLibros[i].nombreLibro + '</a><br />\n<' + link_libro + ' class="autorLibro">'
                        + ListaDeLibros[i].autorLibro + '</a><br />\n<' + link_libro + 'class="autorEnsayo">'
                        + ListaDeLibros[i].autorEnsayo + '</a>\n</div>\n</div>\n</div>');
        //Insertar generos a array
        var Repite = false;
        for (var j = 0; j < Generos.length; j++) {
            if (Generos[j] == ListaDeLibros[i].genero) {
                Repite = true;
                break;
            }
        }
        if (!Repite) {
            Generos[Generos.length] = ListaDeLibros[i].genero;
        }

    }
    //Insertar Generos
    for (var k = 0; k < Generos.length; k++) {
        $("#listaGeneros").append(' <li class="genero"> <a>' + Generos[k] + '</a> </li>');
    }

};

//Insertar libro llamado desde webservice



$(document).ready(function () {
    //smooth scroll
    $(".scroll").click(function (event) {
        event.preventDefault();
        //Calcular el lugar de destino
        var dest = 0;
        if ($(this.hash).offset().top > $(document).height() - $(window).height()) {
            dest = $(document).height() - $(window).height();
        } else {
            dest = $(this.hash).offset().top;
        }
        //Ir a destino
        $('html,body').animate({ scrollTop: dest }, 1000, 'swing');
    });

    //Filtrar por generos
    $(document).on("click", ".genero", function () {

        $(".cuadroLibro").each(function (index) {
            $(this).show();
        });
        if ($(this).text() == " Todos ") {
           
            $(".cuadroLibro").each(function (index) {
                $(this).show();
            });
        } else {
            var genero = "col-sm-3 separacion cuadroLibro" + $(this).text();
            $(".cuadroLibro").each(function (index) {
                var generoa = $(this).attr("class") + " ";
                if (generoa != genero) {
                    $(this).hide();
                }
            });
        }
        

    });

    //Ingresar cual libro va a ser llamado
    $(document).on("click", ".cuadroLibro", function () {
        var idLibroIn = ($(this).attr("id"));
        localStorage.setItem("idLibroOut", idLibroIn)

    });
    $(document).on("click", ".rec", function () {
        var idLibroIn = ($(this).attr("id"));
        localStorage.setItem("idLibroOut", idLibroIn)

    });

    //Quick Search

    
    

});