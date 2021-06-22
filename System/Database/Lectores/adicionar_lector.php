<?php
include '../../Database/conexion.php';
error_reporting(error_reporting() & ~E_NOTICE);
if (isset($_POST)) {
    $nombre_nuevo = $_POST['nombre_nuevo'];
    $apellido_nuevo = $_POST['apellido_nuevo'];
    $celular_nuevo = $_POST['celular_nuevo'];
    $CI_nuevo = $_POST['CI_nuevo'];
    $sql = mysqli_query($conexion, "INSERT INTO lectores (nombre,apellido,celular,ci)
                                    VALUES ('$nombre_nuevo','$apellido_nuevo','$celular_nuevo','$CI_nuevo')");
}
if ($sql) {
    echo 1;
} else {
    echo mysqli_errno($conexion);
}
mysqli_close($conexion);
