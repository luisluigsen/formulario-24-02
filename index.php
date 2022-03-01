<?php include "./config/db.php" ?>
<?php include './views/helpers.php' ?>
<!doctype html>
<html lang="en">

<head>
    <title>Formulario</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/styles.css">
</head>

<body>
    <div class="container p-4">
        <div class="card">
            <div class="card">
                <div class="card-header d-flex justify-content-center color-head gradiente">
                    Formulario
                    <!-- Mostrar errores -->

                </div>
                <div class="card">
                    <div class="card-body">
                    <?php if (isset($_SESSION['completado'])) : ?>
                    <div class="alerta alerta-exito"><?= $_SESSION['completado']; ?></div>
                <?php elseif (isset($_SESSION['errores']['general'])) : ?>
                    <div class="alerta alerta-error"><?= $_SESSION['errores']['general']; ?></div>
                <?php endif; ?>
                    </div>
                </div>

                <div class="card-body">
                    <form action="./controladores/registro.php" method="post" class="">
                        <div class="form-group">
                            <label for="nombre">Nombre:</label>
                            <input type="text" class="form-control" id="nombre" placeholder="Introduce tu nombre" name="nombre">
                            <?php echo isset($_SESSION['errores']) ? mostrarError($_SESSION['errores'], 'nombre') : ""; ?>

                        </div>
                        <div class="form-group">
                            <label for="apellidos">Apellidos:</label>
                            <input type="text" class="form-control" id="apellidos" placeholder="Introduce tus apellidos" name="apellidos">
                            <?php echo isset($_SESSION['errores']) ? mostrarError($_SESSION['errores'], 'apellidos') : ""; ?>

                        </div>
                        <div class="form-group">
                            <label for="password">Contraseña:</label>
                            <input type="password" class="form-control" id="password" placeholder="Introduce tu contraseña" name="password">
                            <?php echo isset($_SESSION['errores']) ? mostrarError($_SESSION['errores'], 'password') : ""; ?>

                        </div>
                        <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="email" class="form-control" id="email" placeholder="Introduce tu email" name="email">
                            <?php echo isset($_SESSION['errores']) ? mostrarError($_SESSION['errores'], 'email') : ""; ?>

                        </div>


                        <button type="submit" class="btn btn-primary" name="submit">Submit</button>
                        </form>
                    <?php borrarErrores(); ?>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>