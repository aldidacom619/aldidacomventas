<?php

class Ventas extends CI_Controller
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
			$vista   = selec_configuracion($empresa,"VISTA VENTA PRODUCTOS");
			//$dato['totales'] = $this->ventas_model->$metodo1($empresa);			
			$this->load->view("Inicio/cabecera");				
			$this->load->view("Inicio/menu",$dato);		
			$this->load->view("Ventas/".$vista);		
			$this->load->view("Inicio/pie");
		}
		else
		{
			redirect("inicio");
		}
	}
	function buscarproducto()
	{
		$valor = $this->input->post('val');
		$empresa = $this->session->userdata('codad_empresa');
		//$valor = "amoxicilina";
		$dato['totales'] = $this->ventas_model->almacen_totales_farmacia_busqueda($empresa,$valor);
		$this->load->view("Ventas/busquedaproducto",$dato);
	}
	function datosproducto()
	{
		$id_usu = $this->session->userdata('id');
		$empresa = $this->session->userdata('codad_empresa');
		$id_pro = $this->input->post('id');
		
		if (!($this->ventas_model->verproductoselecionado($empresa,$id_usu,$id_pro)))
		{
			echo 1;
		}	
		else
		{
			$saldo_producto = $this->ventas_model->select_almacen_totales_id_dos($id_pro);
			$saldo_total = $saldo_producto[0]->saldo;
			if ($saldo_total > 0)
			{
				$filas = $this->ventas_model->select_almacen_totales_id($id_pro); 
				$porcentaje = $filas[0]->precioporcentaje;
				$option = "<option VALUE='-1'>Seleccionar porcentaje</OPTION>";
				if($porcentaje == 1)
				{
					$precios=$this->ventas_model->select_porcentajeprecionproducto_id($id_pro);
					
					foreach ($precios as $fila) 
					{
						$option.="<option value = '".$fila->id."'> % ".$fila->porcentaje." - Precio ".$fila->precio_porcentaje."</option>";		
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
			else
			{
				echo 2;
			}	
    	}	
	}
	function porcentajeid()
	{
		$porcentaje = $this->input->post('id');
		if($porcentaje > 0)
		{	
			$filas = $this->ventas_model->porcentajeid($porcentaje);
			$preciomaximo = $this->ventas_model->preciomaximoproducto($filas[0]->idve_producto);
			$datos ='[{
					     "preciocompra":"'.$filas[0]->precio_porcentaje.'",
						 "precioventa":"'.$preciomaximo[0]->maximo.'"}]';
			echo $datos;		
		}		
		else
		{
			$datos ='[{
					     "preciocompra":"",
						 "precioventa":""}]';
			echo $datos;
		}
	}
	function guardarproductosacumulador()
	{
			
		    $empresa = $this->session->userdata('codad_empresa');
			$id_usu = $this->session->userdata('id');
			$id_pro = $this->input->post('id_prod');
			$tieneporcentaje = $this->input->post('tieneporcentaje');			
			$porcentaje = $this->input->post('porcentaje');
			$cantidad = $this->input->post('cantidad');
			$venta = $this->input->post('venta');			
			$precios = $this->ventas_model->select_totales_id($id_pro);
			$compra = $precios[0]->compra;
			$saldo_producto = $this->ventas_model->select_almacen_totales_id_dos($id_pro);
			$saldo_total = $saldo_producto[0]->saldo;			
			$mensaje1 = "";
			if(is_numeric($cantidad))
			{	
				if($cantidad <= $saldo_total)
			    {
					if($tieneporcentaje == 0)
					{
						$porcentaje = 0;
					}			
					if (($this->ventas_model->verproductoselecionado($empresa,$id_usu,$id_pro)))
					{
						$insert = $this->ventas_model->registrarproductosacumulador($empresa,$id_usu,$id_pro,$tieneporcentaje,$porcentaje,$cantidad,$compra,$venta,"AC");
					}						
					$resul = 1;
				}
				else
				{
					$resul = 2;
					$mensaje1 = "Cantidad insuficiente en almacen";
				}
			}	
			else
			{
				$resul = 2; 
				$mensaje1 = "Valor de cantidad no es valida";
			}
			//$datos = "";
			$resultado ='[{
					     "resultado":"'.$resul.'",
						 "mensaje":"'.$mensaje1.'"
						 }]';
			echo $resultado;
			
	}
	function vercantidad()
	{
		$id_pro = $this->input->post('id');
		$cantidad = $this->input->post('cant');
		$saldo_producto = $this->ventas_model->select_almacen_totales_id_dos($id_pro);
		$saldo_total = $saldo_producto[0]->saldo;
		if($cantidad <= $saldo_total)
		{
			echo 2;		
		}
		else
		{
			echo 0;
		}

	}
	function eliminarproductoacumulador()
	{
		$empresa = $this->session->userdata('codad_empresa');
		$id_usu = $this->session->userdata('id');
		$id_vir = $this->input->post('id');
		$eliminar = $this->ventas_model->eliminproductoacumulador($id_vir);		
		$acumulador = selec_configuracion($empresa,"VISTA ACUMULADOR VENTA");
		echo $this->$acumulador($empresa,$id_usu);					
	}
	function cancelaractualizacion()
	{
		$empresa = $this->session->userdata('codad_empresa');
		$id_usu = $this->session->userdata('id');
		$eliminar = $this->ventas_model->cancelarproductoacumulador($empresa,$id_usu);
		$acumulador = selec_configuracion($empresa,"VISTA ACUMULADOR VENTA");
		echo $this->$acumulador($empresa,$id_usu);	
	}
	function registrar_ingreso()
	{		
		$fecha =  fecha();
		$fecha_hora =  fecha_hora();
		$empresa = $this->session->userdata('codad_empresa');
		$id_usu = $this->session->userdata('id'); 
		$con = 0;
		$listaproductos = selec_configuracion($empresa,"MODELO LISTA PRODUCTOS SELECCIONADOS");
		if($dato = $this->ventas_model->$listaproductos($empresa,$id_usu))
		{
			$num_max = $this->ventas_model->num_venta_max($empresa); 
			$numero_venta = $num_max[0]->maximo + 1;
			foreach($dato as $val)
            {
             	$id_vir = $val->id_vir;
             	$id_prod = $val->idve_producto;
             	$idve_porcentaje = $val->idve_porcentaje;
             	$cantidad = $val->cantidad;
             	$precio_compra = $val->precio_compra;
             	$precio_venta = $val->precio_venta;             	             
             	$idve_proveedor = 0;		
             	$factura = 0;
             	$num_factura = 0;	
             	$observaciones = "";
             	$estado = "AC";
             	$tipoventa = 0;
             	$idve_cliente = 0;
             	$total = $precio_venta * $cantidad;
             	$this->actualizar_almacen($id_prod,$cantidad); 
				$insert = $this->ventas_model->registrar_ventas($empresa,$id_usu,$idve_cliente,$id_prod,$idve_porcentaje,$numero_venta,$precio_compra,$precio_venta,$cantidad,$total,$fecha,$fecha_hora,$tipoventa,$estado);					
				$eliminar = $this->ventas_model->eliminproductoacumulador($id_vir);
				$con ++;			
             }
		}
		$eliminar = $this->ventas_model->cancelarproductoacumulador($empresa,$id_usu);		
		$mensaje = "Se registro la venta de: ".$con." producto(s)";
		$resultado = 1;
		$resultado ='[{
				       "resultado":"'.$resultado.'",
					   "mensaje":"'.$mensaje.'"
					 }]';
		echo $resultado;		
	}
	function listaacumulador()
	{
		$empresa = $this->session->userdata('codad_empresa');
		$id_usu = $this->session->userdata('id');		
		$empresa = $this->session->userdata('codad_empresa');
		$acumulador = selec_configuracion($empresa,"VISTA ACUMULADOR VENTA");
		echo $this->$acumulador($empresa,$id_usu);				
	}
	
	function actualizar_almacen($id_prod,$cantidad)
	{
		$saldo_producto = $this->ventas_model->select_almacen_totales_id_dos($id_prod);
		$saldo_total = $saldo_producto[0]->saldo;		
		$compra = $this->ventas_model->selec_almacenes_idproducto($id_prod);		
		$B = $cantidad;
		foreach ($compra as $fila)
         {
         	if ($B > 0)
         	{
				$idalmacen  = $fila->id; 
				$id_prod = $fila->idve_producto;
				$entrada = $fila->entrada;
				$salida = $fila->salida;
				$A = $fila->saldo;				
				if($A > $B)
				{
					$A = $A - $B;
					$B = 0;
					$cant_sal = $entrada - $A;				
					$update = $this->ventas_model->modifi_almacen_saldos($idalmacen,$cant_sal, $A);
				}
				else
				{
					$B = $B - $A; 
					$A = 0;
					$cant_sal = $entrada - $A;
					$update = $this->ventas_model->modifi_almacen_saldos($idalmacen,$cant_sal, $A);
				}
			}	
		}
		$suma = ($saldo_total - $cantidad);
		$actualizar = $this->ventas_model->modificar_totales_dos($id_prod,$suma);
	}
	function maximaventa()
	{
		$empresa = $this->session->userdata('codad_empresa');
		$num_max = $this->ventas_model->num_venta_max($empresa); 
		$numero = $num_max[0]->maximo + 1;
		echo $numero;
	}	
	function lista_acumulador_datos($empresa,$id_usu)
	{
		$metodo = selec_configuracion($empresa,"MODELO VENTA ACUMULADOR PRODUCTOS VIRTUAL");
		$dato =$this->ventas_model->$metodo($empresa,$id_usu);
		$sum = 0;
		$nl = 1;
		$retorno = '<thead>
					<tr>
						<th>#</th>
                        <th>Opc.</th>
                        <th>Nomb. Comer</th>                                    
                        <th>Cant.</th>
                        <th>Precio</th>
                        <th>Sub-Total</th>
                        <th>Composicion</th>
                        <th>Presentacion</th>
                        <th>Unidad</th>
                        <th>Sabor</th>                                    
					</tr></thead>
                    <tbody>';						
					foreach($dato as $fila)
					{	
						$retorno.= '<tr>
									<td >'. $nl++.'</td>';
						$retorno.= "<td ><button id='eliminar' name='eliminar' onclick='eliminar(". $fila->id_vir.")' class='glyphicon glyphicon-remove'>									</button></td>";    
						$retorno.= '<td >'.$fila->valor1 ."<br>".$fila->valor2.'</td>
                                    <td style="text-align: right;">'.$fila->cantidad.'</td>
                                    <td style="text-align: right;">'.number_format($fila->precio_venta,2).'</td>
                                    <td > <center>'.number_format(($fila->cantidad * $fila->precio_venta),2).'</center></td>
                                    <td >'.$fila->composicion.'</td>
                                    <td >'.$fila->presentacion.'</td>
                                    <td >'.$fila->unidad.'</td>
                                    <td >'.$fila->sabor.'</td>                                    
                                   </tr>';						
						$sum = $sum + ($fila->cantidad * $fila->precio_venta);
					}
					$retorno.=	'<tr>                
					                <th style="text-align: right;" colspan="5">COSTO TOTAL</th>
					                <th style="text-align: right;" > <center>'.number_format($sum,2).'</center></th>
					                <td colspan="6"></td>
            					</tr>';
					if($sum > 0)
					{
						$retorno.='<tr>
					                    <td style="text-align: center;"colspan="3"><button class="btn-primary" onclick="realizaractualizacion()">Guardar Venta</button></td>
					                    <td style="text-align: center;"colspan="3"><button class="btn-primary" onclick="cancelaractualizacion()">Cancelar Venta</button></td>
					                    <td colspan="6"></td>
					              </tr></tbody>';
					}					
		return $retorno;
	}
	function lista_acumulador_datos_farmacia($empresa,$id_usu)
	{
		$metodo = selec_configuracion($empresa,"MODELO VENTA ACUMULADOR PRODUCTOS VIRTUAL");
		$dato =$this->ventas_model->$metodo($empresa,$id_usu);
		$sum = 0;
		$nl = 1;
		$retorno = '<thead>
					<tr>
						<th>#</th>
                        <th>Opc.</th>
                        <th>Nomb. Comer</th>                                    
                        <th>Cant.</th>
                        <th>Precio</th>
                        <th>Sub-Total</th>
                        <th>Composicion</th>
                        <th>Presentacion</th>
                        <th>Linea</th>                                                        
					</tr></thead>
                    <tbody>';						
					foreach($dato as $fila)
					{	
						$retorno.= '<tr>
									<td >'. $nl++.'</td>';
						$retorno.= "<td ><button id='eliminar' name='eliminar' onclick='eliminar(". $fila->id_vir.")' class='glyphicon glyphicon-remove'>									</button></td>";    
						$retorno.= '<td >'.$fila->valor1 ."<br>".$fila->valor2.'</td>
                                    <td style="text-align: right;">'.$fila->cantidad.'</td>
                                    <td style="text-align: right;">'.number_format($fila->precio_venta,2).'</td>
                                    <td > <center>'.number_format(($fila->cantidad * $fila->precio_venta),2).'</center></td>
                                    <td >'.$fila->composicion.'</td>
                                    <td >'.$fila->presentacion.'</td>
                                    <td >'.$fila->nombre_linea.'</td>                                    
                                   </tr>';						
						$sum = $sum + ($fila->cantidad * $fila->precio_venta);
					}
					$retorno.=	'<tr>                
					                <th style="text-align: right;" colspan="5">COSTO TOTAL</th>
					                <th style="text-align: right;" > <center>'.number_format($sum,2).'</center></th>
					                <td colspan="6"></td>
            					</tr>';
					if($sum > 0)
					{
						$retorno.='<tr>
					                    <td style="text-align: center;"colspan="3"><button class="btn-primary" onclick="realizaractualizacion()">Guardar Venta</button></td>
					                    <td style="text-align: center;"colspan="3"><button class="btn-primary" onclick="cancelaractualizacion()">Cancelar Venta</button></td>
					                    <td colspan="6"></td>
					              </tr></tbody>';
					}				
		return $retorno;
	}
	function arqueo()
	{
		if(1 == 1)
		{
			$id_usu = $this->session->userdata('id');
			$empresa = $this->session->userdata('codad_empresa');
			$fecha =  fecha();
			$dato['id_usu'] = $id_usu;
			$dato['usuario'] = $this->session->userdata('usuario');
			$dato['rolescero'] = $this->roles_model->obtener_roles_cero($id_usu);
			$dato['roles'] = $this->roles_model->obtener_roles($id_usu);
			$vista = selec_configuracion($empresa,"VISTA ARQUEO VENTA");			
			$data['totales'] = $this->ventas_model->arqueoventa($id_usu,$fecha);			
			$data['fecha'] = $fecha;
			$totales = $this->ventas_model->arqueoventa($id_usu,$fecha);	
			$this->load->view("Inicio/cabecera");				
			$this->load->view("Inicio/menu",$dato);		
			$this->load->view("Ventas/".$vista,$data);		
			$this->load->view("Inicio/pie");
		}
		else
		{
			redirect("inicio");
		}
	}
}	
?>