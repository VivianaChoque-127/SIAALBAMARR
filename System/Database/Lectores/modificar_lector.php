<?php
include '../../Database/conexion.php';
error_reporting(error_reporting() & ~E_NOTICE);
if (isset($_POST)) {
    $id = $_POST['id'];
    $nombre_update = $_POST['nombre_update'];
    $apellido_update = $_POST['apellido_update'];
    $celular_update = $_POST['celular_update'];
    $CI_update = $_POST['CI_update'];
    $sql = mysqli_query($conexion, "UPDATE lectores
                                    SET
                                        nombre   = '$nombre_update',
                                        apellido = '$apellido_update',
                                        celular   = '$celular_update',
                                        ci   = '$CI_update'
                                    WHERE id = $id");
}
if ($sql) {
    echo 1;
} else {
    echo 0;
}
mysqli_close($conexion);
