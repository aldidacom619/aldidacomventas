<?php
/*
*/ 

class Devolucion_model extends CI_Model
{
	
	function __construct()
	{
		parent::__construct();		
	} 
	function almacen_totales_herbalife($empresa)
	{
		$query = $this->db->query("select *
									  from ve_productos p, 
									       ve_totales t
									 where p.id = t.idve_producto
									   and p.estado = 'AC'
									   and p.codad_empresa=".$empresa);	
        return $query->result();
	}	
}
?>
