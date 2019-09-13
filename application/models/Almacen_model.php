<?php
/*
*/ 

class Almacen_model extends CI_Model
{
	
	function __construct()
	{
		parent::__construct();		
	}
	function almacen_totales()
	{
		$query = $this->db->query("select *
									  from ve_productos p, 
									       ve_totales t
									 where p.id = t.idve_producto
									   and p.estado = 'AC'");	
        return $query->result();
	}
}
?>