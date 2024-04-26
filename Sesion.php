<?php

include_once("Conexion.php");
session_start();

class Sesion extends Conexion {

    public function __construct(){
        $this->conn = parent::open(); 
    }

    public function login($correo,$clave,$tipo_sesion){ // metodo login para iniciar sesion
       
        if($tipo_sesion==1) // Si es 1 la sesion sera para un estudiante
        {
            $statement = $this->conn->prepare("SELECT * FROM estudiantes WHERE direccion = :Correo AND clave = :Clave");
            $statement->bindParam(':Correo',$correo);
            $statement->bindParam(':Clave',$clave);
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
                    $_SESSION['NOMBRE'] = $fila["nombre"];
                    $_SESSION['ID'] = $fila['id'];
                    $_SESSION['CODIGO'] = $fila['codigo'];
                }
                return true;
            } else {
                echo " No se encontraron resultados.";
            }        
            return false;    

        }
        else // si no fue 1 la sesion sera para un administrador de la aplicacion
        {
            $statement = $this->conn->prepare("SELECT * FROM usuario WHERE correo = :Correo AND clave = :Clave");
            $statement->bindParam(':Correo',$correo);
            $statement->bindParam(':Clave',$clave);
            $statement->execute();

            $resultado = $statement->fetchAll(PDO::FETCH_ASSOC); // para obtener todos los resultados como un arreglo asociativo.

            if ($resultado) {
                // La consulta retornó resultados
                foreach ($resultado as $fila) {
                    // Hacer algo con cada fila de resultados
                    echo "ID Usuario: ". $fila['idusuario']; 
                    echo "\n";
                    echo "Codigo Usuario: ". $fila['codigo']; 
                    echo "\n";
                    echo "Nombre Usuario: ". $fila['nombre']; 
                    echo "\n";
                    echo "Correo Usuario: ". $fila['correo']; 
                    echo "\n";
                    echo "Clave Usuario: ".$fila['clave']; 
                    echo "\n";
                    echo "Direccion Usuario: ". $fila['direccion'];
                    echo "\n";
                    echo "Perfil Usuario: ". $fila['perfil'];
                    echo "\n";
                    echo "Estado Usuario: ". $fila['estado'];   
                    $_SESSION['NOMBRE'] = $fila["nombre"];
                    $_SESSION['ID'] = $fila['idusuario'];
                    $_SESSION['PERFIL'] = $fila['perfil'];
                }
                return true;
            } else {
                echo " No se encontraron resultados.";
            }        
            return false;       
        } 
    }

    public function getNombreSesion(){
        return $_SESSION['NOMBRE'];
    }

    public function getIDSession(){
        return $_SESSION['ID'];
    }    

    public function getPerfilSession(){
        return $_SESSION['PERFIL'];
    }   

    public function getCodigoSession(){
        return $_SESSION['CODIGO'];
    }  


    public function salir(){
        $this->conn = parent::close(); 
        echo " : He cerrado la sesion";
    }
}

?>


