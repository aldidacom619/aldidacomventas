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
	function almacen_totales_valoracion($empresa)
	{
		$query = $this->db->query("select *
									  from ve_productos p, 
									       ve_totales t,
									       ve_valorizaciones v
									 where p.id = t.idve_producto
									   and p.id = v.idve_producto
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
	function select_porcentajeprecionproducto_id($idve_producto)
	{
		$query = $this->db->query("select *
									  from ve_precios_porcentajes 
									 where idve_producto = ".$idve_producto."
									 order by porcentaje desc");	
        return $query->result();
	} 
	function porcentajeid($porcentaje)
	{
		$query = $this->db->query("select *
			                         from ve_precios_porcentajes
  									where id = ".$porcentaje);	
        return $query->result();
	}
	function preciomaximoproducto($idve_producto)
	{
		$query = $this->db->query("select max(precio_porcentaje)as maximo
			                         from ve_precios_porcentajes
  								    where idve_producto = ".$idve_producto);	
        return $query->result();
	}
	function registraractualizacionacumulador($empresa,$id_usu,$id_pro,$tieneporcentaje,$porcentaje,$cantidad,$compra,$venta,$vencimiento,$fechaven,$estado)
	{
		$data = array(
			'codad_empresa' => $empresa,
			'idad_usuario' => $id_usu,
			'idve_producto' => $id_pro,
			'porcentaje' => $tieneporcentaje,
			'idve_porcentaje' => $porcentaje,
			'entrada' => $cantidad,
			'precio_compra' => $compra,
			'precio_venta' => $venta,
			'vencimiento' => $vencimiento,
			'fecha_vencimiento' => $fechaven,			
			'estado' =>$estado,
		 );
		$this->db->insert('ve_acumulador_almacen',$data);
		return $this->db->insert_id();
	}
	function listaproductoselecionado($empresa,$idad_usuario)
	{
		$query = $this->db->query("select *,a.id as id_vir
									  from ve_productos p, 
									       ve_acumulador_almacen a
									 where p.id = a.idve_producto
									   and a.codad_empresa =".$empresa."
									   and a.idad_usuario = ".$idad_usuario);	
		return $query->result();
	}
	function listaproductoselecionado_valoracion($empresa,$idad_usuario)
	{
		$query = $this->db->query("select *,a.id as id_vir
									  from ve_productos p, 
									       ve_acumulador_almacen a,
									       ve_valorizaciones v
									 where p.id = a.idve_producto
									   and p.id = v.idve_producto
									   and a.codad_empresa =".$empresa."
									   and a.idad_usuario = ".$idad_usuario);	
		return $query->result();
	}


	function eliminproductoacumulador($id)
	{
		$this->db->delete('ve_acumulador_almacen',array('id' => $id));
	}
	function cancelarproductoacumulador($empresa,$id_usu)
	{
		$this->db->delete('ve_acumulador_almacen',array('codad_empresa' => $empresa,'idad_usuario' =>$id_usu));
	}
	function seleccionar_totales($idve_producto)
	{
		$query = $this->db->query("select *
			                         from ve_totales
  									where idve_producto = ".$idve_producto);	
        return $query->result();
	}
	function modificar_totales($id_prod,$suma,$compra,$venta) 
	{
		$data = array(			
			'saldo' => $suma,
			'compra' => $compra,
			'venta' => $venta
		 );
		$this->db->where('idve_producto',$id_prod);
		return  $this->db->update('ve_totales',$data);
	}
	function registrar_ingreso_almacen($idad_usuario,$idve_producto,$idve_proveedor,$idve_porcentaje,$entrada,$salida,$saldo,$precio_compra,$precio_venta,$vencimiento,$fecha_vencimiento,$fecha,$factura,$num_factura,$observaciones,$estado,$tipoingreso)
	{
		$data =  array(
		  'idad_usuario' => $idad_usuario,
		  'idve_producto' => $idve_producto,
		  'idve_proveedor' => $idve_proveedor,
		  'idve_porcentaje' => $idve_porcentaje,
		  'entrada' => $entrada,
		  'salida' => $salida,
		  'saldo' => $saldo,
		  'precio_compra' => $precio_compra,
		  'precio_venta' => $precio_venta,
		  'vencimiento' => $vencimiento,
		  'fecha_vencimiento' => $fecha_vencimiento,
		  'fecha' => $fecha,
		  'factura' => $factura,
		  'num_factura' => $num_factura,
		  'observaciones' => $observaciones,
		  'estado' => $estado,
		  'tipoingreso' => $tipoingreso,
		);
		$this->db->insert('ve_almacenes',$data);
		return $this->db->insert_id();
	}

	
}
?>
