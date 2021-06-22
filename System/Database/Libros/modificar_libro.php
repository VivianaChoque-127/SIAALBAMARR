<?php
include '../../Database/conexion.php';
error_reporting(error_reporting() & ~E_NOTICE);
if (isset($_POST)) {
    $id = $_POST['id'];
    $nombre_update = $_POST['nombre_update'];
    $area_update = $_POST['area_update'];
    $editorial_update = $_POST['editorial_update'];
    $autor_up = $_POST['autor_up'];
    // print_r($_POST);
 $sql = mysqli_query($conexion, "UPDATE libros
                                    SET
                                        nombre   = '$nombre_update',
                                        area = '$area_update',
                                        editorial  = '$editorial_update',
                                        autor   = '$autor_up'
                                    WHERE id = $id"); 
}
if ($sql) {
    echo 1;
} else {
    echo 0;
}
mysqli_close($conexion);
