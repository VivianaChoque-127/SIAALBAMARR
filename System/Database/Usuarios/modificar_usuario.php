<?php
include '../conexion.php';
$id = $_POST['id'];
$user = $_POST['usuario'];
$passActual = $_POST['passAntiguo'];
$passNuevo = $_POST['passNuevo'];
$passHash = md5($passNuevo);
$query = mysqli_query($conexion, "SELECT password
                                    FROM usuario
                                    WHERE id_usuario = $id");
if ($query) {
    $fila  = mysqli_fetch_array($query);
    $Pass  = $fila["password"];
    if (md5($passActual) == $Pass) {
        // echo "passIguales";
        $queryUpdate = mysqli_query($conexion, "UPDATE usuario
                                                    SET nom_usuario = '$user',
                                                    password = '$passHash'
                                                WHERE id_usuario = $id");
        if ($queryUpdate) {
            echo "update";
        } else {
            echo "notUpdate";
        }
    } else {
        echo "passDiferentes";
    }
} else {
    echo 0;
}

// print_r($query);
// echo json_encode(mysqli_fetch_array($query), JSON_UNESCAPED_UNICODE);
mysqli_close($conexion);
