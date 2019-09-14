<?php
/*
*/ 

class Almacen_model extends CI_Model
{
	
	function __construct()
	{
		parent::__construct();		
	}
	function almacen_totales($empresa)
	{
		$query = $this->db->query("select *
									  from ve_productos p, 
									       ve_totales t
									 where p.id = t.idve_producto
									   and p.estado = 'AC'
									   and p.codad_empresa=".$empresa);	
        return $query->result();
	}
	function verproductoselecionado($empresa,$idad_usuario,$idve_producto)
	{
		$this->db->where('codad_empresa',$empresa);
		$this->db->where('idve_producto',$idve_producto);
		$this->db->where('idad_usuario',$idad_usuario);
		$query = $this->db->get('ve_acumulador_almacen'); 
		if($query->num_rows()>0){
			return false;
		}
		else{
			return true;
		}
	}
	function select_almacen_totales_id($idve_producto)
	{
		$query = $this->db->query("select *
									  from ve_productos p, 
									       ve_totales t
									 where p.id = t.idve_producto
									   and p.id=".$idve_producto);	
        return $query->result();
	} 
}
?>
