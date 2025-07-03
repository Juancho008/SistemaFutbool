<?php

use Fpdf\Fpdf;


// Clase principal PDF que usa MiPDF
class Pdf extends Controlador
{
    public function __construct($parametros = [])
    {
        parent::__construct();
        $this->usuario = $this->modelo("Usuario");
    }

    public function iniciar($parametros = [])
    {
        $orientacion = $parametros['Orientacion'] ?? 'P';
        $unidad = $parametros['Unidad'] ?? 'mm';
        $tamanio = $parametros['Tamanio'] ?? 'A4';

        $this->pdf = new MiPDF($orientacion, $unidad, $tamanio);
        $this->pdf->SetFont('Arial', '', 10);
        $this->pdf->SetTextColor(80, 80, 80);
    }

    public function generarHoja()
    {
        $this->pdf->AddPage();
    }

    public function mostrar($nombrePdf = "Reporte de Suministro.pdf")
    {
        $this->pdf->Output("I", $nombrePdf);
    }

}