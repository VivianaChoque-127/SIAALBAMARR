<?php
include '../conexion.php';
$id = $_GET['id'];

$query = mysqli_query($conexion,"SELECT
                                    id,
                                    nombre_cliente,
                                    correo_cliente,
                                    nit_ci_cliente,
                                    telefono_cliente,
                                    direccion_cliente,
                                    nombre_contacto,
                                    telefono_contacto,
                                    correo_contacto
                                FROM cliente
                                WHERE estado = 1
                                AND id = $id");
// print_r($query);
echo json_encode(mysqli_fetch_array($query),JSON_UNESCAPED_UNICODE);
mysqli_close($conexion);
