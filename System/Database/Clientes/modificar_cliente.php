<?php
include '../../Database/conexion.php';
error_reporting(error_reporting() & ~E_NOTICE);
if (isset($_POST)) {
    $id = $_POST['id'];
    $nombre_cliente_update = $_POST['nombre_cliente_update'];
    $nit_ci_cliente_update = $_POST['nit_ci_cliente_update'];
    $telefono_cliente_update = $_POST['telefono_cliente_update'];
    $correo_cliente_update = $_POST['correo_cliente_update'];
    $direccion_cliente_update = $_POST['direccion_cliente_update'];
    $nombre_contacto_update = $_POST['nombre_contacto_update'];
    $correo_contacto_update = $_POST['correo_contacto_update'];
    $telefono_contacto_update = $_POST['telefono_contacto_update'];
    $sql = mysqli_query($conexion, "UPDATE cliente
                                    SET
                                        nombre_cliente   = '$nombre_cliente_update',
                                        telefono_cliente = '$telefono_cliente_update',
                                        correo_cliente   = '$correo_cliente_update',
                                        nit_ci_cliente   = '$nit_ci_cliente_update',
                                        correo_contacto  = '$correo_contacto_update',
                                        direccion_cliente = '$direccion_cliente_update',
                                        nombre_contacto   = '$nombre_contacto_update',
                                        telefono_contacto = '$telefono_contacto_update'
                                    WHERE id = $id");
}
if ($sql) {
    echo 1;
} else {
    echo 0;
}
mysqli_close($conexion);
