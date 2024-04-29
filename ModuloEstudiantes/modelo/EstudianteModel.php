<?php
include_once("../../Conexion.php");

class EstudianteModel extends Conexion {

    public function __construct(){
        $this->conn = parent::open(); 
    }

}
?>