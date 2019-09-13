<?php

class Almacen extends CI_Controller
{
	function __construct(){
		parent::__construct();	
		$this->_is_logued_in();	
		$this->load->model('roles_model');
		$this->load->model('almacen_model');
		
		$this->load->helper(array('form', 'url'));
		$this->load->library('form_validation');
		$this->load->helper('Menu_helper');
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
			$dato['id_usu'] = $id_usu;
			$dato['usuario'] = $this->session->userdata('usuario');
			$dato['rolescero'] = $this->roles_model->obtener_roles_cero($id_usu);
			$dato['roles'] = $this->roles_model->obtener_roles($id_usu);
			$dato['totales'] = $this->almacen_model->almacen_totales();
			$this->load->view("Inicio/cabecera");				
			$this->load->view("Inicio/menu",$dato);		
			$this->load->view("Almacen/actualizar_almacen",$dato);		
			$this->load->view("Inicio/pie");
		}
		else
		{
			redirect("inicio");
		}
	}
}
?>