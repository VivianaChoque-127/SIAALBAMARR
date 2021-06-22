<?php
$server= "localhost";
$user= "root";
$pass= "";
$db = "inventario";
$conexion=mysqli_connect($server,$user,$pass) or die('No se pudo Conectar: ' . mysqli_error($conexion));
//$conexion=mysqli_connect("localhost","root","") or die('No se pudo Conectar: ' . mysqli_error($conexion));
//$conexion=mysqli_connect("localhost", "root", "sample123", "dbaccount") or die('No se pudo Conectar: ' . mysql_error());
// $conexion=mysqli_connect("localhost", "root", "123456", "dbaccount",3307) or die('No se pudo Conectar: ' . mysql_error());
if ($conexion) {
	mysqli_select_db($conexion,$db);
	mysqli_set_charset($conexion, "utf8");
}
?>
