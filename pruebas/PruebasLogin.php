<?php


pruebasLogin();

function pruebasLogin(){
    include_once("../Sesion.php");
    echo " *** PRUEBA DATOS SESION ADMINISTRADOR *** ";
    echo "\n";
    $mylogin = new Sesion();
    echo "\n";
    $estado_login = $mylogin->login('jhon@gmail.com','$2y$10$PmOVl3JWr2iscvXNLy5HA.gJQjJaRUkb1P/sZD4snMv.IzTv0Bjwm',0);
    echo "\n";
    echo "Estado del Login despues de ejecutar la funcion Login() es: ". ($estado_login==1) ? "Verdadero" : "Falso"; 
    echo "\n";
    if($estado_login==1){
        $nombre_sesion = $mylogin->getNombreSesion();
        $id_sesion = $mylogin->getIDSession();
        $perfil_sesion = $mylogin->getPerfilSession();
        echo "El nombre de la sesion es: ". " " .$nombre_sesion;
        echo "\n";
        echo "El ID de la sesion es: ". " " .$id_sesion;
        echo "\n";
        echo "El Perfil de la sesion es: ". " " .$perfil_sesion;
        echo "\n";
        $mylogin->salir();
    }

    ///////////////////////
    echo "\n";
    echo "\n";
    echo " *** PRUEBA DATOS SESION ESTUDIANTE *** ";
    echo "\n";
    $mylogin = new Sesion();
    echo "\n";
    $estado_login = $mylogin->login('jhon.blandon@correounivalle.edu.co','e10adc3949ba59abbe56e057f20f883e',1);
    echo "\n";
    echo "Estado del Login despues de ejecutar la funcion Login() es: ". ($estado_login==1) ? "Verdadero" : "Falso"; 
    echo "\n";
    if($estado_login==1){
        $nombre_sesion = $mylogin->getNombreSesion();
        $id_sesion = $mylogin->getIDSession();
        $codigo_sesion = $mylogin->getCodigoSession();
        echo "El nombre de la sesion es: ". " " .$nombre_sesion;
        echo "\n";
        echo "El ID de la sesion es: ". " " .$id_sesion;
        echo "\n";
        echo "El Codigo de la sesion es: ". " " .$codigo_sesion;
        echo "\n";
        $mylogin->salir();
    }
}

?>