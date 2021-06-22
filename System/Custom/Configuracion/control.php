<?php
///incluimos la conexion a la base de datos
include '../../Database/conexion.php';
session_start();
/* $pa = md5('admin12345');
$adds = mysqli_query($conexion, "INSERT INTO usuario(id_cliente,nom_usuario,password)
VALUES(1,'admin','$pa')") or die("No se Guardo el exitosamente"); */
$usuario  = $_POST['user-name'];
$password = $_POST['password'];
if ($conexion->connect_errno) {
    printf("Falló la conexión: %s\n", $mysqli->connect_error);
    exit();
}
$resultado        = mysqli_query($conexion, "SELECT * FROM usuario WHERE nom_usuario='$usuario'");
$fila             = $resultado->fetch_assoc();
// print_r($fila);
$numero_resultado = $resultado->num_rows;
if ($numero_resultado > 0) {
    if ($fila["password"] == md5($password))
    {
        $_SESSION["autentificado"] = "SI";
        $_SESSION["user-name"]      = $fila["nom_usuario"];
        $_SESSION["id"]            = $fila["id_usuario"];

        $_SESSION["nombre_usuario"]           = $fila["nombre_usuario"];
        $_SESSION["cargo_usuario"]            = $fila["cargo_usuario"];

        header("Location: ../../index.php");
        exit;
    } else {
        header("Location: ../../error.php");
    }
} else {
    //else 2
    header("Location: ../../error.php");
}
mysqli_close($conexion);
