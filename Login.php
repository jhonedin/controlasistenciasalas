<?php

include_once("Conexion.php");
session_start();

class Login extends Conexion {

    public function __construct(){
        $this->conn = parent::open(); 
    }

    public function login($correo,$clave){ // metodo login para iniciar sesion
       
        $statement = $this->conn->prepare("SELECT * FROM usuario WHERE correo = ? AND clave = ?");
        $statement->execute([$correo, $clave]);
       
        $result = $statement->fetch();
        $_SESSION['USUARIO'] = $result["nombre"];
        $_SESSION['ID'] = $result['id'];
        $_SESSION['PERFIL'] = $result['perfil'];
            
    }

    public function getNombreSesion(){
        return $_SESSION['USUARIO'];
    }


    public function salir(){
        $this->conn = parent::close(); 
        
        echo "ya sali";
    }
}

?>


