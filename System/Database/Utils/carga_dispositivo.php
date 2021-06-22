<?php
include '../conexion.php';
$query = mysqli_query($conexion, "SELECT 
                                    id,
                                    descripcion
                                  FROM tipo_dispositivo");
$rows = array();
while ($r = mysqli_fetch_assoc($query)) {
    $rows[] = $r;
}
print json_encode($rows, JSON_UNESCAPED_UNICODE);
mysqli_close($conexion);