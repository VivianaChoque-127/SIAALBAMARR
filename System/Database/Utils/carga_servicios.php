<?php
include '../conexion.php';
// $id = $_GET['id'];
$query = mysqli_query($conexion, "SELECT 
                                    id,
                                    descripcion 
                                  FROM servicios");
$rows = array();
while ($r = mysqli_fetch_assoc($query)) {
    $rows[] = $r;
}
print json_encode($rows, JSON_UNESCAPED_UNICODE);
mysqli_close($conexion);