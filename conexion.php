<?php
// Datos de conexión a la base de datos
$servername = "192.168.14.80"; // Cambia "localhost" por la dirección del servidor de tu base de datos
$username = "jhon"; // Cambia "usuario" por tu nombre de usuario de MySQL
$password = "UnivalleTulua2023**"; // Cambia "contraseña" por tu contraseña de MySQL
$database = "bdcontrolasistenciasalas"; // Cambia "nombre_base_de_datos" por el nombre de tu base de datos

// Crear conexión
$conn = new mysqli($servername, $username, $password, $database);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
} else {
    echo "Conexión exitosa";
    // Aquí puedes realizar consultas, inserciones, actualizaciones, etc.
}

// Cerrar conexión
$conn->close();

?>
