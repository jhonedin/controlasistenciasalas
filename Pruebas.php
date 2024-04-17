<?php

include_once("Login.php");

$mylogin = new Login();
$mylogin->login("jhon.blandon@correounivalle.edu.co","e10adc3949ba59abbe56e057f20f883e");
$mylogin->getNombreSesion();

?>