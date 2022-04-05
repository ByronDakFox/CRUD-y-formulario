<?php 
if (isset($_POST['nombreId'])) {
require_once("../conexion/conecta.php");
 $n=$_POST['nombreId'];;
$c=$_POST['cedulaId'];;
$d=$_POST['direccionId'];;
$t=$_POST['telefonoId'];;
$r=$_POST['rolId'];

 $sql="INSERT INTO tbl_usuarios(USU_NOMBRE,USU_CEDULA)VALUES ('n','c');
        INSERT INTO tbl_telefono(TEL_NUMERO)VALUES ('t');
        INSERT INTO tbl_direccion(DIR_DOMICILIO)VALUES ('d');
        INSERT INTO tbl_rol(ROL_NOMBRE)VALUES ('r');"


    mysqli_query($conn,$sql);
}




?>