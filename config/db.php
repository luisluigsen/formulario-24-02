<?php

$servidor = 'localhost';
$usuario = 'root';
$password = '1234';
$database = 'blog';

$db = mysqli_connect($servidor , $usuario , $password, $database);
mysqli_query($db, "SET NAMES 'utf8'");

#iniciar sesion
session_start();

?>