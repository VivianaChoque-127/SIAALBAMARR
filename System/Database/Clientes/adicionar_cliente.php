<?php
include '../../Database/conexion.php';
error_reporting(error_reporting() & ~E_NOTICE);
if (isset($_POST)) {
    $nombre_cliente_nuevo = $_POST['nombre_cliente_nuevo'];
    $nit_ci_cliente_nuevo = $_POST['nit_ci_cliente_nuevo'];
    $telefono_cliente_nuevo = $_POST['telefono_cliente_nuevo'];
    $correo_cliente_nuevo = $_POST['correo_cliente_nuevo'];
    $direccion_cliente_nuevo = $_POST['direccion_cliente_nuevo'];
    $nombre_contacto_nuevo = $_POST['nombre_contacto_nuevo'];
    $correo_contacto_nuevo = $_POST['correo_contacto_nuevo'];
    $telefono_contacto_nuevo = $_POST['telefono_contacto_nuevo'];
    $sql = mysqli_query($conexion, "INSERT INTO cliente
                                                (
                                                nombre_cliente,
                                                telefono_cliente,
                                                correo_cliente,
                                                nit_ci_cliente,
                                                correo_contacto,
                                                direccion_cliente,
                                                nombre_contacto,
                                                telefono_contacto)
                                                VALUES
                                                ('$nombre_cliente_nuevo',
                                                '$telefono_cliente_nuevo',
                                                '$correo_cliente_nuevo',
                                                '$nit_ci_cliente_nuevo',
                                                '$correo_contacto_nuevo',
                                                '$direccion_cliente_nuevo',
                                                '$nombre_contacto_nuevo',
                                                '$telefono_contacto_nuevo')");
}
if ($sql) {
    echo 1;
} else {
    echo mysqli_errno($conexion);
}
mysqli_close($conexion);
