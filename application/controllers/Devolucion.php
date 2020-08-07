<?php

class Devolucion extends CI_Controller
{
	function __construct(){
		parent::__construct();	
		$this->_is_logued_in();	
		$this->load->helper('menu_helper');
		$this->load->helper('configuraciones_helper');	
		$this->load->model('roles_model');
		$this->load->model('Devolucion_model');		
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
			$vista   = selec_configuracion($empresa,"VISTA VENTA PRODUCTOS");			
			$dato['totales'] = $this->Devolucion_model->$metodo1($empresa);			
			$this->load->view("Inicio/cabecera");				
			$this->load->view("Inicio/menu",$dato);		
			$this->load->view("Ventas/".$vista,$dato);		
			$this->load->view("Inicio/pie");
		}
		else
		{
			redirect("inicio");
		}
	}
}
?>