<?php
include '../conexion.php';
$query = mysqli_query($conexion, "SELECT MAX(orden) ultimaOrden
                                  FROM medio_almacenamiento
                                  WHERE estado = 1");
/* $rows = array();
while ($r = mysqli_fetch_assoc($query)) {
    $rows[] = $r;
}
print json_encode($rows, JSON_UNESCAPED_UNICODE);
mysqli_close($conexion); */
echo json_encode(mysqli_fetch_array($query),JSON_UNESCAPED_UNICODE);
mysqli_close($conexion);