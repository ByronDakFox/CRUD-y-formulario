<?php

$servername = "localhost";
$database = "bdd_cliente";
$username = "root";
$password = "";

$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn) {
	die("connection_failed:".
         mysqli_connect_error());
}

?>