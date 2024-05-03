<?php 

include_once("../Modelo/EstudianteModel.php");

class EstudianteController{

    function getEstudiante($codigo){
        // Funcion que retorna un archivo que busca un estudiante por su codigo
        // y retorna un archivo JSON con los datos del mismo.
        $estudianteModel = new EstudianteModel();
        $json = json_encode($estudianteModel->getEstudianteCodigo($codigo));
        echo $json;
        return $json;

    }
}

$nuevo = new EstudianteController();
$json_devuelta = $nuevo->getEstudiante('201255414-3743');
echo "\n \n ";
echo " JSON Retornado funcion getEstudiante(codigo) \n \n ";
echo $json_devuelta;

?>