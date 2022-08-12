function select() {
    $.ajax({
        type: "POST",
        url: "api_programa.php?accion=select",
        dataType : "json",
        success: function(data) {

            let tabla ="<table >"+
                            "<tr>"+
                                "<th>Id</th>"+
                                "<th>Nombre</th>"+
                                "<th>Descripcion</th>"+
                                "<th>Inicio</th>"+
                                "<th>Final</th>"+
                                "<th>Día a trasmitir</th>"+
                            "</tr>";

            $.each (data, function (i, item) {

                tabla =  tabla +
                "<tr>"+
                "<td>"+item.Id_programa+"</td>"+
                "<td>"+item.Nombre+"</td>"+
                "<td>"+item.Descripcion+"</td>"+
                "<td>"+item.H_inicio+"</td>"+
                "<td>"+item.H_final+"</td>"+
                "<td>"+item.Id_dia+"</td>"+
                "</tr>";

            });

            tabla = tabla +"</table>";

            $("#ZonaImpresion").html(tabla);
}

});

}//fin select