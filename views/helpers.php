<?php

function mostrarError($errores , $campo)
{
    $alerta = '';
    
    
    if(isset($errores[$campo]) && !empty($campo))
    {
        $alerta = "<div class='form-control is-invalid was-validated form-control:invalid '>".$errores[$campo].'</div>' ;
    }
    
        return $alerta;
}

function borrarErrores()
{
    if (isset($_SESSION['errores']))
    {
        unset($_SESSION['errores']);
    }
    if(isset($_SESSION['completado']))
    {
        unset($_SESSION['completado']);
    }
}