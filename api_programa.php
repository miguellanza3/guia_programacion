<?php

$accion = $_GET["accion"];

  $id_p = "";
  $nombre = "";
  $descripcion = "";
  $inicio = "";
  $fin = "";
  $dia = "";



if ( isset( $_POST["id_p"]) ){
  $id_p = $_POST["id_p"];
}

if (isset( $_POST["nombre"])) {
  // code...
  $nombre = $_POST["nombre"];
}

if (isset( $_POST["descripcion"])) {
  // code...
  $descripcion = $_POST["descripcion"];
}

if (isset( $_POST["inicio"])) {
  // code...
  $inicio = $_POST["inicio"];
}

if (isset( $_POST["fin"])) {
  // code...
  $fin = $_POST["fin"];
}

if (isset( $_POST["dia"])) {
    // code...
    $dia = $_POST["dia"];
  }


switch ($accion) {
    case 'select':
        # code...
        select();
        break;

        case 'insert':
          # code...
          insert ($nombre, $descripcion, $inicio, $fin, $dia);
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



function insert ( $nombre, $descripcion, $inicio, $fin, $dia){

  

  require_once("conexion.php");
    $sql = "insert into programa 
            (Nombre, Descripcion, H_inicio, H_final , Id_dia)
            values 
            ('$nombre', '$descripcion', '$inicio', '$fin', '$dia')";

    $mensaje = array ();
    if ( $conn->query($sql) === TRUE){
        $mensaje_temporal = array("Mensaje"=>"Insercion Exitosa", "Excepcion"=>$conn->error);
        $mensaje [] = $mensaje_temporal;
    }else {
        
        $mensaje_temporal = array("Mensaje"=>"Insercion Fallida", "Excepcion"=>$conn->error);
        $mensaje [] = $mensaje_temporal;

    }

    echo json_encode($mensaje);

}//fin insert


function update (){
  
}


//fin del documento
?>