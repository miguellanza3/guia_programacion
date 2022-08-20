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

function insert() {

    

      let id_p = $("#id_p").val();
      let nombre = $("#nombre").val();
      let descripcion = $("#descripcion").val();
      let inicio = $("#h_inicio").val();
      let fin = $("#h_fin").val();
      let id_dia = $("#id_dia").val();


      let datos =  {
        "id": id_p,
        "nombre": nombre,
        "descripcion": descripcion,
        "inicio": inicio,
        "fin": fin,
        "dia": id_dia
      };

      console.log(datos)

      $.ajax({
        type: "POST",
        url: "api_programa.php?accion=insert",
        dataType : "json",
        data: datos,
        success: function( data ) {

            console.log(data);

        }
      });



}//fin insert

function update(){
    
    let id_p = $("#id_p").val();
    let nombre = $("#nombre").val();
    let descripcion = $("#descripcion").val();
    let inicio = $("#h_inicio").val();
    let fin = $("#h_fin").val();
    let id_dia = $("#id_dia").val();


    let datos =  {
      "id":id_p,
      "nombre":nombre,
      "descripcion":descripcion,
      "inicio":inicio,
      "fin":fin,
      "dia":id_dia
    };

    console.log(datos)

    $.ajax({
      type: "POST",
      url: "api_programa.php?accion=update",
      dataType : "json",
      data: datos,
      success: function( data ) {

          console.log(data);

      }
    });
}//fin update

