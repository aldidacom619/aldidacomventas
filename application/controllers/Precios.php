<?php

class Precios extends CI_Controller
{
	function __construct(){
		parent::__construct();	
		$this->_is_logued_in();	
		$this->load->helper('menu_helper');
		$this->load->helper('configuraciones_helper');	
		$this->load->model('roles_model');
		$this->load->model('ventas_model');		
		$this->load->helper(array('form', 'url'));
		$this->load->library('form_validation');		
		$this->load->helper('date');
	}
	function _is_logued_in()
	{
		$is_logued_in = $this->session->userdata('is_logued_in'); 
		if($is_logued_in != TRUE)
		{
			redirect('usuarios');
		}	
	}
	function index() 
	{
		if(1 == 1)
		{
			$id_usu = $this->session->userdata('id');
			$empresa = $this->session->userdata('codad_empresa');
			$dato['id_usu'] = $id_usu;
			$dato['usuario'] = $this->session->userdata('usuario');
			$dato['rolescero'] = $this->roles_model->obtener_roles_cero($id_usu);
			$dato['roles'] = $this->roles_model->obtener_roles($id_usu);
			$metodo1 = selec_configuracion($empresa,"MODELO VENTA PRODUCTOS TOTALES");
			$vista   = selec_configuracion($empresa,"VISTA PRECIOS PRODUCTO");
			$dato['totales'] = $this->ventas_model->$metodo1($empresa);			
			$this->load->view("Inicio/cabecera");				
			$this->load->view("Inicio/menu",$dato);		
			$this->load->view("Precios/".$vista,$dato);		
			$this->load->view("Inicio/pie");
		}
		else
		{
			redirect("inicio");
		}
	}
	function datosproducto()
	{
		$id_usu = $this->session->userdata('id');
		$empresa = $this->session->userdata('codad_empresa');
		$id_pro = $this->input->get('id');
		
		
		$filas = $this->ventas_model->select_almacen_totales_id($id_pro); 
		$porcentaje = $filas[0]->precioporcentaje;
		$option = '<thead><tr><th>#</th><th>Porcentaje(%)</th><th>Precio Actual</th><th>Nuevo Precio</th></tr></thead>';
		if($porcentaje == 1)
		{
			$precios=$this->ventas_model->select_porcentajeprecionproducto_id($id_pro);
			$nl = 1;
			foreach ($precios as $fila) 
			{
				//$option.="<option value = '".$fila->id."'> % ".$fila->porcentaje." - Precio ".$fila->precio_porcentaje."</option>";	
				$option.= '<tr><td >'.$nl++.'</td><td >'.$fila->porcentaje.'</td><td >'.$fila->precio_porcentaje."</td><td><input type = 'text' class='form-control' name = '".$fila->id."' value = '".$fila->precio_porcentaje."'></td></tr>";	
			}								
		}	
		$datos ='[{ 
			     "id":"'.$filas[0]->id.'",
				 "codad_empresa":"'.$filas[0]->codad_empresa.'",
				 "idve_linea":"'.$filas[0]->idve_linea.'",
				 "valor1":"'.$filas[0]->valor1.'",
				 "valor2":"'.$filas[0]->valor2.'",
				 "composicion":"'.$filas[0]->composicion.'",
				 "presentacion":"'.$filas[0]->presentacion.'",
				 "unidad":"'.$filas[0]->unidad.'",
				 "sabor":"'.$filas[0]->sabor.'",
				 "vencimiento":"'.$filas[0]->vencimiento.'",
				 "valoracion":"'.$filas[0]->valoracion.'",
				 "precioporcentaje":"'.$filas[0]->precioporcentaje.'",
				 "estado":"'.$filas[0]->estado.'",
				 "idve_producto":"'.$filas[0]->idve_producto.'",
				 "saldo":"'.$filas[0]->saldo.'",
				 "compra":"'.$filas[0]->compra.'",
				 "venta":"'.$filas[0]->venta.'",
				 "opcionprecios":"'.$option.'"}]';
		 echo $datos;
	}
	function porcentajeid()
	{
		$porcentaje = $this->input->get('id');
		$filas = $this->ventas_model->porcentajeid($porcentaje);
		$preciomaximo = $this->ventas_model->preciomaximoproducto($filas[0]->idve_producto);
		$datos ='[{
				     "preciocompra":"'.$filas[0]->precio_porcentaje.'",
					 "precioventa":"'.$preciomaximo[0]->maximo.'"}]';
		echo $datos;		
	}
	function guardaractualizacion()
	{
		$id_prod = $this->input->get('id_prod');
		//$id_prod = 5;
		$porcentaje = $this->input->get('tieneporcentaje');
		//$porcentaje = 2;
		$nuevo_precio = 0;
		if($porcentaje != 1)
		{
			$nuevo_precio = $this->input->get('nuevo_precio');

		}
		else
		{
			$precios=$this->ventas_model->select_porcentajeprecionproducto_id($id_prod);
			
			foreach ($precios as $fila) 
			{
			
				$nuevo_precio = $nuevo_precio." - ".$this->input->get($fila->id);
			}		
			
		}
		echo $nuevo_precio;


		
		
		
	}
	
}	
?>