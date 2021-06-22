<?php
include '../../Database/conexion.php';
error_reporting(error_reporting() & ~E_NOTICE);
$id = $_GET["id"];
$sql = mysqli_query($conexion, "UPDATE cliente
	                                SET estado = 0
                                    WHERE id = $id ");

if ($sql) {
    echo 1;
} else {
    echo 0;
}
mysqli_close($conexion);
