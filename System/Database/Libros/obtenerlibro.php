<?php
include '../conexion.php';
$id = $_GET['id'];

$query = mysqli_query($conexion,"SELECT id, nombre, area, editorial, autor
                                    FROM libros
                                    WHERE id='$id'");
// print_r($query);
echo json_encode(mysqli_fetch_array($query),JSON_UNESCAPED_UNICODE);
mysqli_close($conexion);
