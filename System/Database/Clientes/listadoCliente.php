<?php
include '../conexion.php';
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
                                WHERE estado = 1");

$rows = array();
while($r = mysqli_fetch_assoc($query)) {
    $rows[] = $r;
}
$results = array(
"sEcho" => 1,
"iTotalRecords" => count($rows),
"iTotalDisplayRecords" => count($rows),
"aaData"=>$rows);
// print_r(print json_encode($results,JSON_UNESCAPED_UNICODE));
print json_encode($results,JSON_UNESCAPED_UNICODE);
mysqli_close($conexion);
?>
