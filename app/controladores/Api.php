<?php

class Api extends Controlador
{
	function __construct()
	{
		$this->usuario = $this->modelo('Usuario');
		$this->sesion = $this->modelo('Sesion');
		header('Access-Control-Allow-Origin: *');
		header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
		header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE');
	}
	function index()
	{
		echo "Controlador de API";
	}
}
