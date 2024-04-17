<?php     

class Conexion{

    private $server = "mysql:host=192.168.14.80;dbname=bdcontrolasistenciasalas";
	private $username = "jhon";
	private $password = "UnivalleTulua2023**";
	private $options  = array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,);
	protected $conn;
 	
	public function open(){
 		try{
 			$this->conn = new PDO($this->server, $this->username, $this->password, $this->options);
            echo "Conexion exitosa";
 			return $this->conn;
 		}
 		catch (PDOException $e){
 			echo "Ocurrió un problema con la conexión: " . $e->getMessage();
 		}
 
    }
 
	public function close(){
   		$this->conn = null;
        echo "Desconexion exitosa";
 	}
}
/*
$prueba = new Conexion();
$prueba->open();
echo "\n";
$prueba->close();
*/

?>
