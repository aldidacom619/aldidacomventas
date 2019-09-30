<?php
/*
*/

class Configuraciones_model extends CI_Model
{
	function __construct()
	{
		parent::__construct();		
	}
	
	function empresa_valoracion($empresa)
	{
		$query = $this->db->query("select valoracionproducto
			                         from ad_empresas
  								    where codigo = ".$empresa);	
        return $query->result();
	}
	function recuperar_configuracion($empresa, $concepto)
	{
		$query = $this->db->query("select valor1
			                         from ad_configuraciones_empresas
  								    where codad_empresa = ".$empresa."
  								      and concepto = '".$concepto."'");	
        return $query->result();
	}

}
?>