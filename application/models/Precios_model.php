<?php
/*
*/ 

class Precios_model extends CI_Model
{
	
	function __construct()
	{
		parent::__construct();		
	} 
	function modificar_precios_totales($id_prod,$venta) 
	{
		$data = array(						
			'venta' => $venta
		 );
		$this->db->where('idve_producto',$id_prod);
		return  $this->db->update('ve_totales',$data);
	}
	function modificar_precios_porcentaje($id_prod,$venta) 
	{
		$data = array(						
			'precio_porcentaje' => $venta
		 );
		$this->db->where('id',$id_prod);
		return  $this->db->update('ve_precios_porcentajes',$data);
	}
	function registrar_precios_actualizados($id_user,$id_pro,$id_pro_precio,$anterior,$actual,$fecha,$estado)
	{
		$data = array(			
			'idad_usuario' => $id_user,
			'idve_producto' => $id_pro,
			'idve_precio_porcentaje' => $id_pro_precio,
			'valor_anterior' => $anterior,
			'valor_actual' => $actual,
			'fecha_actualizacion' => $fecha,
			'estado' =>$estado,
		 );
		$this->db->insert('ve_precios_actualizados',$data);
		return $this->db->insert_id();
	}

	

	
}
?>
