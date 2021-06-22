<?php
require __DIR__ . "/vendor/autoload.php";
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

$documento = new Spreadsheet();

/*FIRMA DE DOCUMENTO*/
$documento
    ->getProperties()
    ->setCreator("MASTIN")
    ->setLastModifiedBy('admin') // última vez modificado por
    ->setTitle('Reporte de Sumas y Saldos')
    ->setSubject('Reporte')
    ->setDescription('generado por Admin')
    ->setKeywords('etiquetas o palabras clave separadas por espacios')
    ->setCategory('Contabilidad');

/**/
$hoja = $documento->getActiveSheet();

/*NOMBRE DE LA HOJA*/
$hoja->setTitle('Sumas y Saldos');

/*NO BORRA*/
// $celdasCInicio='3';
// $celdasCFin='3';
// $rangoCInicio='C'.$celdasCInicio;
// $rangoCFin='H'.$celdasCInicio;


/*TITULO DEL REPORTES COMBINANDO CELDAS*/
$hoja->getCell('A1')->setValue("ASOBAN");
$hoja->getStyle('A1')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER);
//$documento->getActiveSheet()->mergeCells("{$rangoCInicio}:{$rangoCFin}");
$hoja->mergeCells('A1:F1');
$hoja->getStyle('A1')->getFont()->setBold(true);
/*TAMAÑO DE LA LETRA*/
$hoja->getStyle("A1:F1")->getFont()->setSize(16);

$hoja->getCell('A2')->setValue("Expresado en Bolivianos (Bs)");
$hoja->getStyle('A2')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER);
$hoja->mergeCells('A2:F2');
$hoja->getStyle('A2')->getFont()->setBold(true);

/*ARMAMOS TITULO DE LOS CAMPOS*/
$hoja->setCellValue('C5', "SUMAS");
$hoja->mergeCells('C5:D5');
$hoja->setCellValue('E5', "SALDOS");
$hoja->mergeCells('E5:F5');
$hoja->getStyle('C5:F5')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER);
$hoja->getStyle('C5:F5')->getFont()->setBold(true);

$hoja->setCellValue('A6', "CODIGO");
$hoja->setCellValue('B6', "CUENTA");
$hoja->setCellValue('C6', "DEBE");
$hoja->setCellValue('D6', "HABER");
$hoja->setCellValue('E6', "DEUDOR");
$hoja->setCellValue('F6', "ACREEDOR");

/*AJUSTAR CELDA TAMAÑO ALTO*/
$hoja->getRowDimension('6')->setRowHeight(40);

/*ALINEAMOS LAS CELDAS AL CENTRO EN HORIZONTAL Y VERTICAL*/
$hoja->getStyle('A6:F6')->getAlignment()->setVertical(\PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER);
$hoja->getStyle('A6:F6')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER);


$cadena="pppp";
for ($i = 7; $i <= 20; $i++) {
	$cadena = $cadena . $cadena;
    $hoja->setCellValue('A' . $i, "codigo $i");
    $hoja->setCellValue('B' . $i, $cadena);
    $hoja->setCellValue('C' . $i, "debe $i");
    $hoja->setCellValue('D' . $i, "haber $i");
    $hoja->setCellValue('E' . $i, "deudor $i");
    $hoja->setCellValue('F' . $i, "acrredo $i");
    $hoja->getColumnDimension('A')->setAutoSize(true);
    $hoja->getColumnDimension('B')->setWidth(70);
    $hoja->getColumnDimension('C')->setAutoSize(true);
    $hoja->getColumnDimension('D')->setAutoSize(true);
    $hoja->getColumnDimension('E')->setAutoSize(true);
    $hoja->getColumnDimension('F')->setAutoSize(true);
}

/*CONVIERTE NEGRILLA*/
$hoja->getStyle('A6:F6')->getFont()->setBold(true);

/*AJUSTAR TEXTO*/
$documento->getDefaultStyle()->getAlignment()->setWrapText(true);


/*OTRAS OPCIONES*/
//$hoja->setCellValue("B2", "Este va en B2");
//$hoja->setCellValue("A3", "Parzibyte");


/*NOMBRE DEL ARCHIVO*/
$nombreDelDocumento = "suma_saldos.xlsx";
 
$writer = new Xlsx($documento);

header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header('Content-Disposition: attachment;filename="' . $nombreDelDocumento . '"');
header('Cache-Control: max-age=0');

$writer = IOFactory::createWriter($documento, 'Xlsx');
$writer->save('php://output');
exit;