<?php

$accion = $_GET["accion"];

  $id = "";
  $nombre = "";
  $descripcion = "";
  $inicio = "";
  $fin = "";
  $id_dia = "";



if ( isset( $_POST["id_p"]) ){
  $id = $_POST["id_p"];
}

if (isset( $_POST["nombre"])) {
  // code...
  $nombre = $_POST["nombre"];
}

if (isset( $_POST["descripcion"])) {
  // code...
  $descripcion = $_POST["descripcion"];
}

if (isset( $_POST["h_inicio"])) {
  // code...
  $inicio = $_POST["h_inicio"];
}

if (isset( $_POST["h_fin"])) {
  // code...
  $fin = $_POST["h_fin"];
}

if (isset( $_POST["id_dia"])) {
    // code...
    $id_dia = $_POST["id_dia"];
  }


switch ($accion) {
    case 'select':
        # code...
        select();
        break;
    
    default:
        # code...
        break;
}



function select(){

    require_once("conexion.php");
    $sql = "SELECT * FROM programa";
    $result = $conn->query($sql);
    $objetoJson = array();
  
    if ($result->num_rows > 0) {
      // code...
      while ($row = $result->fetch_assoc() ) {
        // code...
        $objetoJson[] = $row;
      }
    }
      echo json_encode($objetoJson);
      $conn->close();



}//fin select









//fin del documento
?>