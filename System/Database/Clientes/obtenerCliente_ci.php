<?php
include '../conexion.php';
$ci_cliente = $_GET['ci_cliente'];

$query = mysqli_query($conexion,"SELECT
                                    id,
                                    nombre_cliente
                                FROM cliente
                                WHERE estado = 1
                                AND nit_ci_cliente = $ci_cliente");
// print_r($query);
echo json_encode(mysqli_fetch_array($query),JSON_UNESCAPED_UNICODE);
mysqli_close($conexion);
