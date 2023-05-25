<?php 

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "lista_telefonica";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if(!$conn){
    die("Falha na conexão com o banco de dados: ".mysqli_connect_error());
}

?>