<?php
include_once ('../../Database/conexion.php');
include_once("../../phpjasperxml/PHPJasperXML.inc.php");
// include_once ('setting.php');
$id = $_GET['id'];
//print_r($user);

$PHPJasperXML = new PHPJasperXML();
// $PHPJasperXML->debugsql=true;
$PHPJasperXML->arrayParameter=array("parId"=>$id);
$PHPJasperXML->load_xml_file("jasper/rptCleintes.jrxml");
$PHPJasperXML->transferDBtoArray($server,$user,$pass,$db);
$PHPJasperXML->outpage("I"); 
//page output method I:standard output  D:Download file
/* $query = mysqli_query($conexion,"SELECT
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
                                WHERE estado = 1
                                AND id = $id");
// print_r($query);
echo json_encode(mysqli_fetch_array($query),JSON_UNESCAPED_UNICODE);
mysqli_close($conexion); */