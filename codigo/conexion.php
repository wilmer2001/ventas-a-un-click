<?php
$nombreservidor = "localhost";
$usuario = "root";
$clave = "";
$bd = "empresa";
//SELECT * FROM `pedidos`
$conn = new mysqli($nombreservidor, $usuario, $clave, $bd);
echo "conexion establecida";
if ( mysqli_connect_errno()){
    echo "este sitio esta presentando problemas";
}
$conn -> set_charset("utf-8");
?>