<?php
class Controlador
{
	/**
	 * Funcion constructora de todos los controladores
	 */
	function __construct($parametros = array())
	{
	}

	/**
	 * Instancia un objeto del modelo tal cual como se llama el archivo y la clase
	 */
	static function modelo($modelo)
	{
		require_once '../app/modelos/' . $modelo . '.php';
		return new $modelo();
	}

	/**
	 * Carga (require_once) una vista de la carpeta app/vistas tal cual como se llama el archivo
	 */
	public function vista($vista, $datos = [])
	{
		if (file_exists('../app/vistas/' . $vista . '.php')) {
			require_once '../app/vistas/' . $vista . '.php';
		} else {
			echo 'La vista no Existe.';
		}
	}

	/**
	 * Carga (require_once) archivos helpers de la carpeta app/helpers para incorporar archivos php extras
	 */
	public function helper($helper)
	{
		$file = '../app/helpers/' . $helper . '.php';
		if (file_exists($file)) {
			require_once $file;
		} else {
			echo 'El Helper no Existe.';
		}
	}

	/**
	 * Carga (require_once) el Header incluido en app/vistas/inc/
	 */
	public function header($header = 'header.php')
	{
		if (file_exists('../app/vistas/inc/'.$header)) {
			$datos = $this->modelo('Login')->obtenerUsuario();
			require_once '../app/vistas/inc/'.$header;
			$this->helper('constantes_js');
			$this->menu($datos['id_perfil']);
		} else {
			echo 'La vista no Existe.';
		}
	}

	/**
	 * Carga (require_once) el Menu incluido en app/vistas/inc/
	 */
	public function menu($id_perfil = '')
	{
		if (file_exists('../app/vistas/inc/menu.php')) {
			$datos = $this->modelo('Menu')->obtenerMenu($id_perfil);
			require_once '../app/vistas/inc/menu.php';
		} else {
			echo 'La vista no Existe.';
		}
	}

	/**
	 * Carga (require_once) el Footer incluido en app/vistas/inc/
	 */
	public function footer()
	{
		if (file_exists('../app/vistas/inc/footer.php')) {
			require_once '../app/vistas/inc/footer.php';
		} else {
			echo 'La vista no Existe.';
		}
	}

	/**
	 * Redirecciona a un controlador, y una accion
	 * $controlador = controlador donde quiero dirigir
	 * $accion = Funcion del controlador que llamare
	 */
	public function redir($controlador = 'Home', $accion = 'index')
	{
		echo '<script> window.location.href = "' . RUTA_URL . '/' . $controlador . '/' . $accion . '" </script>';
		exit();
	}

	/**
	 * Verifica si esta logueado el usuario en caso contrario envia al controlador acceso
	 */
	function verificarAcceso()
	{
		$login = $this->modelo('Login');
		//Con esto verificamos que se encuentre logueado
		if (!$login->verificarLogin()) {
			$this->redir('Acceso');
		}
	}

	function alerta($alerta)
	{
		echo "<script> alert('$alerta'); </script>";
	}

	/**
	 * Funcion para subir un archivo a la carpeta indicada
	 * $archivo : 			se debe para el $_FILES['nombre_de_campo']
	 * $nombre_archivo :	Nombre que tendra el archivo
	 * $carpeta: 			Carpeta donde se alojará el archivo
	 * $opciones: 			Arreglo con opciones para habilitar o deshabilitar
	 */

	function subirArchivo($archivo, $nombre_archivo = '', $carpeta = 'tmp', $opciones = [])
	{
		//configuracion de variable de retorno
		$retorno = array();
		$retorno['codigo'] = 0;
		$retorno['mensaje'] = '';
		$retorno['archivo'] = array();

		//se verifican si existen opciones o se habiltiar los valores estandares
		if (!isset($opciones['publica'])) {
			$opciones['publica'] = true;
		}
		if ($opciones['publica']) {
			$base = RUTA_PUBLIC;
		} else {
			$base = RUTA_APP;
		}
		if (!isset($opciones['max_size'])) {
			$opciones['max_size'] = 100000000;
		}
		if (!isset($opciones['excluir'])) {
			$opciones['excluir'] = array();
		} else {
			$opciones['excluir'] = explode(",", $opciones['excluir']);
		}

		$tipos_de_archivos = array(
			'jpg' => 'image/jpeg',
			'png' => 'image/png',
			'gif' => 'image/gif',
			'csv' => 'text/csv',
			'pdf' => 'application/pdf',
			'zip' => 'application/zip',
			'rar' => 'application/x-rar-compressed',
			'zip' => 'application',
			'odt' => 'application/vnd.oasis.opendocument.text',
			'doc' => 'application/msword',
			'svg' => 'image/svg+xml',
			'rtf' => 'application/rtf',
		);

		$archivos_permitidos = array();
		if (count($opciones['excluir']) > 0) {
			foreach ($tipos_de_archivos as $key => $value) {
				if (!array_search($key, $opciones['excluir'])) {
					$archivos_permitidos[$key] = $value;
				}
			}
		} else {
			$archivos_permitidos = $tipos_de_archivos;
		}

		try {
			//se controla que no tenga error el archivo temporal
			if (!isset($archivo['error']) || is_array($archivo['error'])) {
				throw new RuntimeException('Parametro inválido.');
			}
			switch ($archivo['error']) {
				case UPLOAD_ERR_OK:
					break;
				case UPLOAD_ERR_NO_FILE:
					throw new RuntimeException('No se envio el archivo.');
				case UPLOAD_ERR_INI_SIZE:
				case UPLOAD_ERR_FORM_SIZE:
					throw new RuntimeException('Tamaño de archivo excedido.');
				default:
					throw new RuntimeException('Error desconocido.');
			}

			//Controla el tamaño maximo del archivo
			if ($archivo['size'] > $opciones['max_size']) {
				throw new RuntimeException('Tamaño de archivo excedido.');
			}

			//controla el tipo de archivo subido
			$finfo = new finfo(FILEINFO_MIME_TYPE);
			if (false === $ext = array_search(
				$finfo->file($archivo['tmp_name']),
				$archivos_permitidos,
				true
			)) {
				throw new RuntimeException('Formato de archivo invalido.');
			}

			//directorio donde alojar la carpeta
			$directorio = $base . '/' . $carpeta;
			if (!move_uploaded_file(
				$archivo['tmp_name'],
				sprintf(
					$directorio . '/%s.%s',
					$nombre_archivo,
					$ext
				)
			)) {
				throw new RuntimeException('Error al mover el archivo a la carpeta: ' . $directorio);
			}
			$retorno['archivo']['nombre'] = $nombre_archivo;
			$retorno['archivo']['directorio'] = $directorio;
			$retorno['archivo']['extension'] = $ext;
		} catch (Exception $e) {
			$retorno['codigo'] = -1;
			$retorno['mensaje'] = $e->getMessage();
		}
		return $retorno;
	}

	/** 
	 * Función para evaluar si un usuario autenticado puede o no realizar una acción
	 * $perfil: Es el id_perfil que tiene que tener el usuario para permitir realizar la acción
	 */
	function permitirAccion($array)
	{
		if (array_search($_SESSION['id_perfil'], $array) === false) {
			echo "<script>alert('No tenés permisos para realizar esta acción')</script>";
			$this->redir('Home');
		} else {
			return true;
		}
	}

	function verificarModulo($modulo = '')
	{
		$this->perfil = $this->modelo('Perfil');
		$this->sesion = $this->modelo('Sesion');
		$acceder = false;
		$i = 0;
		$permisos = $this->perfil->listarPermisos($this->sesion->obtenerValor('id_perfil'));
		while ($acceder == false && $i < count($permisos)) {
			if ($permisos[$i]['url'] == $modulo) {
				$acceder = true;
			}
			$i++;
		}
		if (!$acceder) {
			$this->redir();
		}
	}

	/**
	 * Retorna si el usuario loguado es administrador
	 */
	public function esAdmin()
	{
		$parametros = $this->modelo('Parametro');
		$sesion = $this->modelo('Sesion');
		$retorno = false;
		$perfil_admin = $parametros->obtenerPorId('id_perfil_admin');
		if ($sesion->obtenerValor('id_perfil') == $perfil_admin['valor']) {
			$retorno = true;
		}
		return $retorno;
	}

	public function verificarPermiso($permiso = 'X')
	{

		$retorno = false;
		if ($this->esAdmin()) {
			$retorno = true;
		} else {
			$sesion = $this->modelo('Sesion');
			$lista_permisos = (array) $sesion->obtenerValor('permisos');
			foreach ($lista_permisos as $per) {
				if (strtolower($per['controlador']) == strtolower(get_class($this))) {
					if (stripos($per['permisos'], $permiso) !== false) {
						$retorno = true;
					}
				}
			}
		}
		if($retorno===false){
			$this->alerta("Permiso denegado.");
			$this->redir('Home');
		}
	}
}
