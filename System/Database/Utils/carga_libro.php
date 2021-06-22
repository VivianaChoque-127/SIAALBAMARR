<?php
include '../conexion.php';
$query = mysqli_query($conexion, "SELECT id,nombre
                                  FROM libros
                                  WHERE estado =1");
$rows = array();
while ($r = mysqli_fetch_assoc($query)) {
    $rows[] = $r;
}
print json_encode($rows, JSON_UNESCAPED_UNICODE);
mysqli_close($conexion);