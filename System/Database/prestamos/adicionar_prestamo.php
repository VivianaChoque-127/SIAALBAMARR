<?php
include '../../Database/conexion.php';
error_reporting(error_reporting() & ~E_NOTICE);
if (isset($_POST)) {
    $id_lector_nuevo = $_POST['id_lector_nuevo'];
    $libro_nuevo = $_POST['libro_nuevo'];
    
    $sql = mysqli_query($conexion, "INSERT INTO prestamos ( id_libro,id_lector)
                                    VALUES ($libro_nuevo,$id_lector_nuevo)");
}

if ($sql) {
    $sql = mysqli_query($conexion, "UPDATE libros
                                        SET
                                            estado = 0
                                        WHERE id = $libro_nuevo");
    echo 1;
} else {
    echo mysqli_errno($conexion);
}
mysqli_close($conexion);
