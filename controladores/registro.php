<?php


if(isset($_POST))
    {
        require '../config/db.php';
        if(!isset($_SESSION))
        {
        session_start();
        }
    $nombre= isset($_POST['nombre']) ?  $_POST['nombre']: false;
    $apellidos= isset($_POST['apellidos']) ? $_POST['apellidos']: false;
    $email= isset($_POST['email']) ? $_POST['email']: false;
    $password= isset($_POST['password']) ? $_POST['password']: false;

    $errores = array();
    #validamos los campos del formulario
    #nombre
    if(!empty($nombre) && !is_numeric($nombre) && !preg_match("/[0-9]/", $nombre))
    {   
        $nombre_validado = true;

    }else
    {
        $nombre_validado = false;
        $errores['nombre'] = 'El nombre no es valido';
    }
    #apellidos
    if(!empty($apellidos) && !is_numeric($apellidos) && !preg_match("/[0-9]/", $apellidos))
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
    var_dump($valido);
    #insertar registros en la base de datos
   if(count($errores)==0)
   {

       $guardar_usuario = true;

       #cifrar la contraseña
       $password_segura = password_hash($password, PASSWORD_BCRYPT, ['cost'=>4]);
    //    var_dump($password_segura);
    //    die();
    #insertamos datos en la base de datos
        $sql = "INSERT INTO users VALUES(null, '$nombre', '$apellidos' , '$email', '$password_segura', CURDATE())";
       $guardar = mysqli_query($db, $sql);

        if($guardar)
        {
            $_SESSION['completado'] = 'El registro se ha completado con exito';
        }
        else
        {
            $_SESSION['errores']['general'] = 'Fallo al guardar el usuario';
        }

   }else
   {
       $_SESSION['errores']= $errores;
   }
   header('Location: ../index.php');
}

?>