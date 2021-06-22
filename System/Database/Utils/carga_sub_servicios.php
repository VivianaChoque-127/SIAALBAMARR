<?php
include '../conexion.php';
$id = $_GET['id'];
$query = mysqli_query($conexion, "SELECT 	
                                    id,
                                    descripcion
                                  FROM sub_servicios 
                                  WHERE id_servicios = $id ");
$rows = array();
while ($r = mysqli_fetch_assoc($query)) {
    $rows[] = $r;
}
print json_encode($rows, JSON_UNESCAPED_UNICODE);
mysqli_close($conexion);