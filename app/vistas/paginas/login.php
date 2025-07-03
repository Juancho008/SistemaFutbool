<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title><?php echo TITULO_SISTEMA ?></title>
  <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="<?php echo RUTA_URL ?>/css/login.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

</head>

<body>
  <main>

    <div class="container-fluid">
      <div class="row justify-content-center">
        <div class="col-4">
          <img class="mt_per_logo" src='' alt='logo de camara'>
          <div class="card p-4 mt_per card-transp">
            <h1 class="titulo-sistema">
              <?php echo TITULO_SISTEMA ?>
            </h1>
            <div class="card-body ">
              <form action="<?php echo RUTA_URL ?>/Acceso/ingresar" method="post">
                <div class="form-group">
                  <label class='label-usuario' for="usuario">Usuario</label>
                  <input type="text" name="usuario" id="email" class="form-control" placeholder="Ingrese su Usuario">
                </div>
                <div class="form-group mb-4">
                  <label class='label-password' for="password">Contraseña</label>
                  <input type="password" name="clave" id="password" class="form-control" placeholder="Ingrese su Contraseña">
                </div>
                <button type="submit" id="login" class="btn btn-block login-btn">Ingresar</button>
            </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </main>

</body>

</html>