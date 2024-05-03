<?php    

include_once("../ModuloEstudiantes/modelo/EstudianteModel.php");
$estudiante = new EstudianteModel();
echo "\n";
$resultado = $estudiante->getEstudianteCodigo('201255414-3743');
echo "\n";
echo "\n";
echo json_encode($resultado);
echo "\n";
echo "\n";
echo implode(";",$resultado[0]); // solo se esta retornando un arreglo de una sola posicion que contiene toda la informacion
//echo implode(' ',$resultado[1]);

?>