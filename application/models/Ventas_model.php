<?php
/*
*/ 

class Ventas_model extends CI_Model
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
	function almacen_totales_farmacia($empresa)
	{
		$query = $this->db->query("select *
									  from ve_productos p, 
									       ve_totales t,
									       ve_linea_producto l
									 where p.id = t.idve_producto
									   and p.idve_linea = l.id	
									   and p.estado = 'AC'
									   and p.codad_empresa=".$empresa);	
        return $query->result();
	}
	function almacen_totales_farmacia_busqueda($empresa,$valor)
	{
		$query = $this->db->query("select *
									  from ve_productos p, 
									       ve_totales t,
									       ve_linea_producto l
									 where p.id = t.idve_producto
									   and p.idve_linea = l.id	
									   and p.estado = 'AC'
									   and p.codad_empresa=".$empresa."
									   and CONCAT(upper(p.valor1),' ',upper(p.valor2)) like upper('%".$valor."%') ");	
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
		$query = $this->db->get('ve_acumulador_venta'); 
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
									   and p.estado = 'AC'
									   and p.id=".$idve_producto);	
        return $query->result();
	} 
	function select_totales_id($idve_producto)
	{
		$query = $this->db->query("select *
									  from ve_totales t
									 where t.idve_producto=".$idve_producto);	
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
	function registrarproductosacumulador($empresa,$id_usu,$id_pro,$tieneporcentaje,$porcentaje,$cantidad,$compra,$venta,$estado)
	{
		$data = array(
			'codad_empresa' => $empresa,
			'idad_usuario' => $id_usu,
			'idve_producto' => $id_pro,
			'porcentaje' => $tieneporcentaje,
			'idve_porcentaje' => $porcentaje,
			'cantidad' => $cantidad,
			'precio_compra' => $compra,
			'precio_venta' => $venta,				
			'estado' =>$estado,
		 );
		$this->db->insert('ve_acumulador_venta',$data);
		return $this->db->insert_id();
	}
	function listaproductoselecionado_herbalife($empresa,$idad_usuario)
	{
		$query = $this->db->query("select *,a.id as id_vir
									  from ve_productos p, 
									       ve_acumulador_venta a
									 where p.id = a.idve_producto
									   and p.estado = 'AC'
									   and a.codad_empresa =".$empresa."
									   and a.idad_usuario = ".$idad_usuario);	
		return $query->result();
	}
	function listaproductoselecionado_farmacia($empresa,$idad_usuario)
	{
		$query = $this->db->query("select *,l.nombre_linea,a.id as id_vir
									  from ve_productos p, 
									       ve_acumulador_venta a,
									       ve_linea_producto l
									 where p.id = a.idve_producto
									   and p.estado = 'AC'
									   and p.idve_linea = l.id
									   and a.codad_empresa =".$empresa."
									   and a.idad_usuario = ".$idad_usuario);	
		return $query->result();
	}
	
	
	function eliminproductoacumulador($id)
	{
		$this->db->delete('ve_acumulador_venta',array('id' => $id));
	}
	function cancelarproductoacumulador($empresa,$id_usu)
	{
		$this->db->delete('ve_acumulador_venta',array('codad_empresa' => $empresa,'idad_usuario' =>$id_usu));
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
	function registrar_ventas($codad_empresa,$idad_usuario,$idve_cliente,$idve_producto,$idve_porcentaje,$numero_venta,$compra,$precio,$cantidad,$total,$fecha,$fecha_hora,$tipoventa,$estado)
	{
		$data = array(
			'codad_empresa' => $codad_empresa,
			'idad_usuario' => $idad_usuario,
			'idve_cliente' => $idve_cliente,
			'idve_producto' => $idve_producto,
			'idve_porcentaje' => $idve_porcentaje,
			'numero_venta' => $numero_venta,
			'compra' => $compra,
			'precio' => $precio,
			'cantidad' => $cantidad,
			'total'=>$total,
			'fecha'=>$fecha,
			'fecha_hora'=>$fecha_hora,
			'tipoventa'=>$tipoventa,
			'estado'=>$estado			
		 );
		$this->db->insert('ve_ventas',$data);
		return $this->db->insert_id();
	}

	function num_venta_max($codad_empresa)
	{
		$query = $this->db->query("select max(numero_venta)as maximo
			                         from ve_ventas
  								    where codad_empresa = ".$codad_empresa);	
        return $query->result();
	}
	function select_almacen_totales_id_dos($idve_producto)
	{
		$query = $this->db->query("select *
			 					     from ve_totales t 
			 					    where t.idve_producto = ".$idve_producto );
		return $query->result();
	} 
	function selec_almacenes_idproducto($idve_producto)
	{
		$query = $this->db->query("select *
			 					     from ve_almacenes a 
			 					    where a.saldo > 0
			 					      and a.idve_producto = ".$idve_producto."
			 					    order by a.id asc" );
		return $query->result();
	} 
	function modifi_almacen_saldos($id_al,$salida,$saldo)
	{
		$data = array(
			'salida' => $salida,
			'saldo' => $saldo,						
		 );
		$this->db->where('id',$id_al);
		return  $this->db->update('ve_almacenes',$data);
	}
	function modificar_totales_dos($idve_producto,$saldo)
	{
		$data = array(
			'saldo' => $saldo,			
		 );
		$this->db->where('idve_producto',$idve_producto);
		return  $this->db->update('ve_totales',$data);
	}

	
}
?>
