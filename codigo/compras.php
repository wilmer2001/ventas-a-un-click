
<!DOCTYPE html>
<html lang="en">
<?php
require_once "conexion.php";
$query = "SELECT * from productos";
$resul_tasks = mysqli_query($conn, $query);
?>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>principal</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel=StyleSheet href="compras.css" type="text/css" media=screen>
</head>

<body class="cuerpo">


  <div class="container">
    <div class="row contenedor-ventas">
      <div class="col alinear-izquierda contenedor-titulo">
        <h1>ventas a un clic</h1>
      </div>
      <div class="col alinear-derecha contenedor-logo">
        <img src="https://previews.123rf.com/images/asmati/asmati1610/asmati161000043/63402497-mano-haga-clic-en-el-bot%C3%B3n-el-icono-blanco-en-el-c%C3%ADrculo-rojo-.jpg" class="float-right" alt="Cinque Terre">
      </div>
    </div>
    <div class="row  compras">
      <div class="col-5 alinear-izquierda imagenes">nombre </div>
      <div class="col-3 ">codigo producto </div>
      <div class="col-1"> cantidad_articulo </div>
      <div class="col-2">valor</div>
      <div class="col-1">eliminar</div>
    </div>


    <?php

while ($row = $resul_tasks->fetch_assoc()) {
  
  echo '
  
  <div class="row  compras">
  <div class="col-5 alinear-izquierda imagenes">'.$row ['nombre'].' </div>
  <div class="col-3">'.$row['cod_producto'].'</div>
  <div class="col-1"><input type="number" min="1" max="100" value="'.$row['cantidad'].'"> </div>
  <div class="col-2"><input type="number" min="1" max="100" disabled value="'.$row ['valor'].'"></div>
  <div class="col-1"><button type="button" class="btn btn-danger">eliminar</button></div>
</div>
  
  
  
  ';
  
  
  
 // echo "<tr><td>".$row ['nombre']."</td><td>".$row['cod_producto']."</td><td>".$row['cantidad']."</td><td>".$row['fecha_caducida']."</td><td>".$row ['valor']."</td></tr>";
}
?>
<div class="row abajo-botones">
  <div class="col"> <button type="button" class="btn btn-danger">Agregar producto</button></div>
  <div class="col"><button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown">
            Modo de pago
          </button>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="0">Tarjeta</a>
            <a class="dropdown-item" href="1">efectivo</a>
          </div></div>
  <div class="col"><button type="button" class="btn btn-danger">pagar</button></div>
</div>

  </div>



  <div class="container">

<div>
 
</div>
    <?php


    while ($row = $resul_tasks->fetch_assoc()) {
      echo "<tr><td>".$row ['nombre']."</td><td>".$row['cod_producto']."</td><td>".$row['cantidad']."</td><td>".$row['fecha_caducida']."</td><td>".$row ['valor']."</td></tr>";
    }
    ?>
    </table>

  </div>

</body>

</html>
