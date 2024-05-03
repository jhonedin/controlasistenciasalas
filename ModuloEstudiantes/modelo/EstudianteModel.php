<?php
include_once(__DIR__."../../../Conexion.php");

class EstudianteModel extends Conexion {

    public function __construct(){
        $this->conn = parent::open(); 
    }

    public function getEstudianteCodigo($codigo){
        $statement = $this->conn->prepare("SELECT * FROM estudiantes WHERE codigo = :Codigo");
        $statement->bindParam(':Codigo',$codigo);
        $statement->execute();
        $resultado = $statement->fetchAll(PDO::FETCH_ASSOC); // para obtener todos los resultados como un arreglo asociativo.
        if ($resultado) {
            // La consulta retornó resultados
            foreach ($resultado as $fila) {
                // Hacer algo con cada fila de resultados
                echo "ID Estudiante:". " " . $fila['id']; 
                echo "\n";
                echo "Codigo Estudiante:". " " . $fila['codigo']; 
                echo "\n";
                echo "Nombre Estudiante:". " " . $fila['nombre']; 
                echo "\n";
                echo "Apellido Estudiante:". " " . $fila['apellido'];
                echo "\n";
                echo "Identificacion Estudiante:". " " . $fila['identificacion'];
                echo "\n";
                echo "Direccion Estudiante:". " " . $fila['direccion']; 
                echo "\n";
                echo "Codigo Estudiante:". " " .$fila['estado']; 
                echo "\n";
                echo "ID Carrera Estudiante:". " " . $fila['id_carrera'];
                echo "\n";
                echo "ID Nivel Estudiante:". " " . $fila['id_nivel'];
                echo "\n";
                echo "Metodo Hash Estudiante:". " " . $fila['metodo_hash'];
                echo "\n";
                echo "Clave Estudiante:". " " . $fila['clave'];     
                echo "\n";             
            }
            return $resultado;
        } else {
            echo " No se encontraron resultados.";
            return null; 
        }  
    }



}
?>