<?php    

$codigo = '201255414-3743';
pruebaFuncionGetEstudiante($codigo);

function pruebaFuncionGetEstudiante($codigo){

include_once("../ModuloEstudiantes/Modelo/EstudianteModel.php");
echo "\n";
echo "\n";
echo "PROBANDO LA FUNCION getEstudianteCodigo de EstudianteModel.php \n";
echo "\n";
$estudiante = new EstudianteModel();
echo "\n";
$resultado = $estudiante->getEstudianteCodigo($codigo);
echo "\n";
echo "\n";
echo "Imprimiendo desde PruebasEstudianteModel.php \n \n";
echo json_encode($resultado);
echo "\n";
echo "\n";
if($resultado==null){
    echo "Error la consulta retorno NULL";
}else{
    echo implode(";",$resultado[0]); // solo se esta retornando un arreglo de un solo elemento que contiene toda la informacion
    //echo implode(' ',$resultado[1]);
    echo "\n";
    echo "\n";
    $json = json_encode($resultado);
    // Decodificar el JSON
    $data = json_decode($json, true);
    // Obtener el primer elemento del array (en este caso solo hay uno)
    $primerElemento = $data[0];
    // Separar los valores en variables con los mismos nombres que las claves del JSON
    $id = $primerElemento['id'];
    $codigo = $primerElemento['codigo'];
    $nombre = $primerElemento['nombre'];
    $apellido = $primerElemento['apellido'];
    $identificacion = $primerElemento['identificacion'];
    $direccion = $primerElemento['direccion'];
    $estado = $primerElemento['estado'];
    $id_carrera = $primerElemento['id_carrera'];
    $id_nivel = $primerElemento['id_nivel'];
    $metodo_hash = $primerElemento['metodo_hash'];
    $clave = $primerElemento['clave'];

    // Imprimir los valores separados en variables
    echo "Imprimir los valores separados en variables \n";
    echo "id: $id\n";
    echo "codigo: $codigo\n";
    echo "nombre: $nombre\n";
    echo "apellido: $apellido\n";
    echo "identificacion: $identificacion\n";
    echo "direccion: $direccion\n";
    echo "estado: $estado\n";
    echo "id_carrera: $id_carrera\n";
    echo "id_nivel: $id_nivel\n";
    echo "metodo_hash: $metodo_hash\n";
    echo "clave: $clave\n";
}

}
?>