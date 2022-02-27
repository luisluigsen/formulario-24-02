<?php
session_start();

if(isset($_POST))
{
    $nombre= isset($_POST['nombre']) ?  $_POST['nombre']: false;
    $apellidos= isset($_POST['apellidos']) ? $_POST['apellidos']: false;
    $email= isset($_POST['email']) ? $_POST['email']: false;
    $password= isset($_POST['password']) ? $_POST['password']: false;

    $errores = array();
    #validamos los campos del formulario
    #nombre
    if(!empty($nombre) && is_numeric($nombre) && !preg_match("/[0-9]", $nombre))
    {
        $nombre_validado = true;
    }else
    {
        $nombre_validado = false;
        $errores['nombre'] = 'El nombre no es valido';
    }
    #apellidos
    if(!empty($apellidos) && is_numeric($apellidos) && !preg_match("/[0-9]", $apellidos))
    {
        $apellido_validado = true;
    }else
    {
        $apellido_validado = false;
        $errores['apellidos'] = 'El apellido no es valido';
    }
    #email
    if(!empty($email)&&filter_var($email , FILTER_VALIDATE_EMAIL))
    {
        $email_validado = true;
    }else
    {
        $email_validado = false;
        $errores['email'] = 'el email no es valido';
    }
    #contraseña
    if(!empty($password))
    {
        $password_validado = true;
    }else
    {
        $password_validado = false;
        $errores['password'] = ' el password no es valido';
    }

    #insertar registros en la base de datos
    var_dump($errores);

}

?>