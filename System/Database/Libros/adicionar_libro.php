<?php
include '../../Database/conexion.php';
error_reporting(error_reporting() & ~E_NOTICE);
if (isset($_POST)) {
    $nombre_nuevo = $_POST['nombre_nuevo'];
    $area_nuevo = $_POST['area_nuevo'];
    $editorial_nuevo = $_POST['editorial_nuevo'];
    $autor_nuevo = $_POST['autor_nuevo'];
    $sql = mysqli_query($conexion, "INSERT INTO libros (nombre,area,editorial,autor)
                                    VALUES ('$nombre_nuevo','$area_nuevo','$editorial_nuevo','$autor_nuevo')");
}
if ($sql) {
    echo 1;
} else {
    echo mysqli_errno($conexion);
}
mysqli_close($conexion);
