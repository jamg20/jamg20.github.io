<!DOCTYPE html>
<html lang="es-MX">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
   	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="styles/paginas/index.css">
    <link rel="icon" type="image/png" href="imagenes/icobeto.png">
</head>
<body>
    <div class="spinner-container" id="loadingSpinner">
        <div class="spinner-border text-light" role="status">
            <span class="visually-hidden">Cargando...</span>
        </div>
    </div>

    <div class="formulario">
        <div class="text-center">
            <img src="imagenes/beto.png" class="logo" alt="Logo">
        </div>
        <form action="validar.php" method="post" onsubmit="mostrarSpinner()">
            <legend>Inicio de Sesión</legend>

            <div class="mb-3">
                <label for="nombre1" class="form-label">Usuario</label>
                <input type="text" id="nombre1" name="nombre1" class="form-control" placeholder="Ingresa tu usuario" required>
            </div>

            <div class="mb-3">
                <label for="password1" class="form-label">Contraseña</label>
                <input type="password" id="password1" name="password1" class="form-control" placeholder="Ingresa tu contraseña" required>
            </div>

            <div class="d-grid">
                <button type="submit" class="btn btn-danger">Aceptar</button>
            </div>

        	<!--PARA REGISTRAR USUARIO EN EL LOGIN ESTARA OCULTO
			<!--<div class="mt-3 text-center">
                <a href="Registro_Usuario.php">¡Regístrate Aquí!</a>
            </div>-->
        </form>
    </div>

    <script>
        function mostrarSpinner() {
            document.getElementById('loadingSpinner').style.display = 'flex';
        }
    </script>
	

    <!-- Enlace a Bootstrap JS y dependencias -->
    <script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>
