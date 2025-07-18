<!DOCTYPE html>
<html lang="en">

<head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title><?php echo TITULO_SISTEMA ?></title>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/@floating-ui/core@1.6.0"></script>
      <script src="https://cdn.jsdelivr.net/npm/@floating-ui/dom@1.6.3"></script>
      <script src=" https://cdn.jsdelivr.net/npm/sweetalert2@11.22.2/dist/sweetalert2.all.min.js "></script>
      <link href=" https://cdn.jsdelivr.net/npm/sweetalert2@11.22.2/dist/sweetalert2.min.css " rel="stylesheet">
      <link rel="stylesheet" href="<?php echo URL_VENDOR ?>/fortawesome/font-awesome/css/fontawesome.css" />
      <link rel="stylesheet" href="<?php echo URL_VENDOR ?>/fortawesome/font-awesome/css/brands.css" />
      <link rel="stylesheet" href="<?php echo URL_VENDOR ?>/fortawesome/font-awesome/css/solid.css" />
      <link rel="stylesheet" href="<?php echo URL_VENDOR ?>/fortawesome/font-awesome/css/all.css" />
      <link rel="stylesheet" href="<?php echo URL_COMPONENTES ?>/bootstrap/css/bootstrap.min.css" />
      <link rel="stylesheet" href="<?php echo URL_CSS ?>/colores.css" />
      <link rel="stylesheet" href="<?php echo URL_CSS ?>/home.css" />
      <link rel="stylesheet" href="<?php echo URL_CSS ?>/ordenDelDia.css" />
      <link rel="stylesheet" href="<?php echo URL_CSS ?>/dropdown.css" />
      <link rel="stylesheet" href="<?php echo URL_CSS ?>/categorias.css" />
      <link rel="stylesheet" href="<?php echo URL_VENDOR ?>/datatables/datatables/media/css/dataTables.bootstrap4.min.css" />
      <script src="<?php echo URL_COMPONENTES ?>/jquery/jquery.min.js"></script>
      <script src="<?php echo URL_COMPONENTES ?>/bootstrap/js/bootstrap.min.js"></script>
      <script src="<?php echo URL_COMPONENTES ?>/jqueryui/jquery-ui.js"></script>
      <script src="<?php echo URL_JS ?>/lib/popper/popper.min.js"></script>
      <script src="<?php echo URL_JS ?>/main.js"></script>
      <!--dataTables -->
      <script src="<?php echo URL_VENDOR ?>/datatables/datatables/media/js/jquery.dataTables.min.js"></script>
      <script src="<?php echo URL_VENDOR ?>/datatables/datatables/media/js/dataTables.bootstrap4.js"></script>
      <!-- Select 2 -->
      <link rel="stylesheet" href="<?php echo URL_JS ?>/lib/select2/select2.min.css">
      <script src="<?php echo URL_JS ?>/lib/select2/select2.min.js"></script>
      <!-- Icon library -->
      <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>

<body>
      <div class="transicion ">
            <div class="transicion-mensaje">
                  <div class="transicion-gif">
                        <div class="spinner-border" role="status">
                              <span class="sr-only">Loading...</span>
                        </div>
                  </div>
                  <div class="titulo">
                        Espere por favor
                  </div>
                  <div class="mensaje">
                        El sistema esta realizando tareas de comprobación aguarde un momento por favor..
                  </div>
            </div>
      </div>
      <div class="app-general">
            <div id="header-info" class="bg-dark">
                  <label class="usuario-conectado bg-dark mt-1">
                        <?php
                        echo "Usuario: " . $datos['apellido'] . " " . $datos['nombre'];
                        ?>
                  </label>
                  <label class="boton-salir">
                        <button class="salir-btn"><a href="<?php echo RUTA_URL ?>/Acceso/salir" class="text-white"> Salir </a></button>
                  </label>
            </div>