<?php
include '../conexion.php';
$id = $_GET['id'];
$query = mysqli_query($conexion, "SELECT 
                                    id AS id_modelo,
                                    nombre_modelo
                                  FROM modelo
                                  WHERE estado = 1
                                  AND id_marca = $id");
$rows = array();
while ($r = mysqli_fetch_assoc($query)) {
    $rows[] = $r;
}
print json_encode($rows, JSON_UNESCAPED_UNICODE);
mysqli_close($conexion);