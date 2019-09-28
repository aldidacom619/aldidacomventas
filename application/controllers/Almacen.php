<?php

class Almacen extends CI_Controller
{
	function __construct(){
		parent::__construct();	
		$this->_is_logued_in();	
		$this->load->helper('menu_helper');
		$this->load->model('roles_model');
		$this->load->model('almacen_model');		
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
			if(empresa_valoracion($empresa) == 0)
			{
				$dato['totales'] = $this->almacen_model->almacen_totales($empresa);
				$dato['prodvirtuales'] =$this->almacen_model->listaproductoselecionado($empresa,$id_usu);
				$vista = "actualizar_almacen";
			}
			else
			{
				$dato['totales'] = $this->almacen_model->almacen_totales_valoracion($empresa);
				$dato['prodvirtuales'] =$this->almacen_model->listaproductoselecionado_valoracion($empresa,$id_usu);
				$vista = "actualizar_almacen_valoracion";
			}
			$this->load->view("Inicio/cabecera");				
			$this->load->view("Inicio/menu",$dato);		
			$this->load->view("Almacen/".$vista,$dato);		
			$this->load->view("Inicio/pie");
		}
		else
		{
			redirect("inicio");
		}
	}
	function datosproducto()
	{
		$id_usu = $this->session->userdata('id');
		$empresa = $this->session->userdata('codad_empresa');
		$id_pro = $this->input->get('id');

		
		if (!($this->almacen_model->verproductoselecionado($empresa,$id_usu,$id_pro)))
		{
			echo 1;
		}	
		else
		{
			$filas = $this->almacen_model->select_almacen_totales_id($id_pro); 
			$porcentaje = $filas[0]->precioporcentaje;
			$option = "<option VALUE='-1'>Seleccionar porcentaje</OPTION>";
			if($porcentaje == 1)
			{
				$precios=$this->almacen_model->select_porcentajeprecionproducto_id($id_pro);
				
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
	}
	function porcentajeid()
	{
		$porcentaje = $this->input->get('id');
		$filas = $this->almacen_model->porcentajeid($porcentaje);
		$preciomaximo = $this->almacen_model->preciomaximoproducto($filas[0]->idve_producto);
		$datos ='[{
				     "preciocompra":"'.$filas[0]->precio_porcentaje.'",
					 "precioventa":"'.$preciomaximo[0]->maximo.'"}]';
		echo $datos;		
	}
	function guardaractualizacionacumulador()
	{
			
		    $empresa = $this->session->userdata('codad_empresa');
			$id_usu = $this->session->userdata('id');
			$id_pro = $this->input->get('id_prod');
			$tieneporcentaje = $this->input->get('tieneporcentaje');
			$vencimiento = $this->input->get('vencimiento');

			$porcentaje = $this->input->get('porcentaje');
			$compra = $this->input->get('compra');
			$cantidad = $this->input->get('cantidad');
			$venta = $this->input->get('venta');			
			$fechaven = $this->input->get('fechaven');		

			if($tieneporcentaje == 0)
			{
				$porcentaje = 0;
			}
			if($vencimiento == 0)
			{
				$fechaven = '';
			}						
			if (($this->almacen_model->verproductoselecionado($empresa,$id_usu,$id_pro)))
			{
				$insert = $this->almacen_model->registraractualizacionacumulador($empresa,$id_usu,$id_pro,$tieneporcentaje,$porcentaje,$cantidad,$compra,$venta,$vencimiento,$fechaven,"AC");
			}	
			if(empresa_valoracion($empresa) == 0)
			{
				echo $this->lista_acumulador_datos($empresa,$id_usu);		
			}
			else
			{
				echo $this->lista_acumulador_datos_valoracion($empresa,$id_usu);	
			}	
	}
	
	
	function eliminarproductoacumulador()
	{
		$empresa = $this->session->userdata('codad_empresa');
		$id_usu = $this->session->userdata('id');
		$id_vir = $this->input->get('id');
		$eliminar = $this->almacen_model->eliminproductoacumulador($id_vir);
		$dato['filas'] =$this->almacen_model->listaproductoselecionado($empresa,$id_usu);
		if(empresa_valoracion($empresa) == 0)
		{
			echo $this->lista_acumulador_datos($empresa,$id_usu);		
		}
		else
		{
			echo $this->lista_acumulador_datos_valoracion($empresa,$id_usu);	
		}	
	}
	function cancelaractualizacion()
	{
		$empresa = $this->session->userdata('codad_empresa');
		$id_usu = $this->session->userdata('id');
		$eliminar = $this->almacen_model->cancelarproductoacumulador($empresa,$id_usu);
		$dato['filas'] =$this->almacen_model->listaproductoselecionado($empresa,$id_usu);
		if(empresa_valoracion($empresa) == 0)
		{
			echo $this->lista_acumulador_datos($empresa,$id_usu);		
		}
		else
		{
			echo $this->lista_acumulador_datos_valoracion($empresa,$id_usu);	
		}	
	}
	function registrar_ingreso()
	{
		$fecha =  fecha();
		$empresa = $this->session->userdata('codad_empresa');
		$id_usu = $this->session->userdata('id');
		$con = 0;
		if($dato = $this->almacen_model->listaproductoselecionado($empresa,$id_usu))
		{
			foreach($dato as $val)
            {
             	$id_prod = $val->idve_producto;
             	$porcentaje = $val->porcentaje;
             	$idve_porcentaje = $val->idve_porcentaje;
             	$entrada = $val->entrada;
             	$precio_compra = $val->precio_compra;
             	$precio_venta = $val->precio_venta;
             	$vencimiento = $val->vencimiento;
             	$fecha_vencimiento = $val->fecha_vencimiento;	
             	$idve_proveedor = 0;		
             	$factura = 0;
             	$num_factura = 0;	
             	$observaciones = "";
             	$estado = "AC";
             	$tipoingreso = 0;
				$insert = $this->almacen_model->registrar_ingreso_almacen($id_usu,$id_prod,$idve_proveedor,$idve_porcentaje,$entrada,0,$entrada,$precio_compra,$precio_venta,$vencimiento,$fecha_vencimiento,$fecha,$factura,$num_factura,$observaciones,$estado,$tipoingreso);	
				$total = $this->almacen_model->seleccionar_totales($id_prod);
				$saldo = $total[0]->saldo;
				$suma = ($saldo + $entrada);
				$modificar = $this->almacen_model->modificar_totales($id_prod,$suma,$precio_compra,$precio_venta);	
				$con ++;			
             }
		}
		$eliminar = $this->almacen_model->cancelarproductoacumulador($empresa,$id_usu);		
		echo "Se actualizaron: ".$con." productos en almacen";
	}
	function listaacumulador()
	{
		$empresa = $this->session->userdata('codad_empresa');
		$id_usu = $this->session->userdata('id');		
		$empresa = $this->session->userdata('codad_empresa');
		if(empresa_valoracion($empresa) == 0)
		{
			echo $this->lista_acumulador_datos($empresa,$id_usu);		
		}
		else
		{
			echo $this->lista_acumulador_datos_valoracion($empresa,$id_usu);	
		}	
	}
	function lista_acumulador_datos($empresa,$id_usu)
	{
		$dato =$this->almacen_model->listaproductoselecionado($empresa,$id_usu);
		$sum = 0;
		$nl = 1;
		$retorno = '<thead>
					<tr>
						<th>#</th>
                        <th>Opc.</th>
                        <th>Nomb. Comer</th>                                    
                        <th>Cant.</th>
                        <th>Compra</th>
                        <th>Total</th>
                        <th>Composicion</th>
                        <th>Presentacion</th>
                        <th>Unidad</th>
                        <th>Sabor</th>                                    
                        <th>Precio Venta</th>   
                        <th>Fecha Vencimiento</th>
					</tr></thead>
                    <tbody>';						
					foreach($dato as $fila)
					{	
						$retorno.= '<tr>
									<td >'. $nl++.'</td>';
						$retorno.= "<td ><button id='eliminar' name='eliminar' onclick='eliminar(". $fila->id_vir.")' class='glyphicon glyphicon-remove'>									</button></td>";    
						$retorno.= '<td >'.$fila->valor2.'</td>
                                    <td style="text-align: right;">'.$fila->entrada.'</td>
                                    <td style="text-align: right;">'.number_format($fila->precio_compra,2).'</td>
                                    <td > <center>'.number_format(($fila->entrada * $fila->precio_compra),2).'</center></td>
                                    <td >'.$fila->composicion.'</td>
                                    <td >'.$fila->presentacion.'</td>
                                    <td >'.$fila->unidad.'</td>
                                    <td >'.$fila->sabor.'</td>                                    
                                    <td style="text-align: right;">'.number_format($fila->precio_venta,2).'</td>
                                    <td > <center>'. $fila->fecha_vencimiento.'</center></td>	
									</tr>';						
						$sum = $sum + ($fila->entrada * $fila->precio_compra);
					}
					$retorno.=	'<tr>                
					                <th style="text-align: right;" colspan="5">COSTO TOTAL</th>
					                <th style="text-align: right;" > <center>'.number_format($sum,2).'</center></th>
					                <td colspan="7"></td>
            					</tr>';
					if($sum > 0)
					{
						$retorno.='<tr>
					                    <td style="text-align: center;"colspan="3"><button class="btn-primary" onclick="realizaractualizacion()">Guardar actualizacion</button></td>
					                    <td style="text-align: center;"colspan="4"><button class="btn-primary" onclick="cancelaractualizacion()">Cancelar Venta</button></td>
					                    <td colspan="6"></td>
					              </tr></tbody>';
					}
					
		echo $retorno;
	}
	function lista_acumulador_datos_valoracion($empresa,$id_usu)
	{
		$dato =$this->almacen_model->listaproductoselecionado_valoracion($empresa,$id_usu);
		$sum = 0;
		$nl = 1;
		$val = 0;
		$retorno = '<thead>
					<tr>
						 <th>#</th>
                        <th>Opc.</th>
                        <th>Nomb. Comer</th>                                    
                        <th>Val.</th>
                        <th>Cant.</th>
                        <th>T. Val.</th>
                        <th>Compra</th>
                        <th>Total</th>
                        <th>Composicion</th>
                        <th>Presentacion</th>
                        <th>Unidad</th>                                                         
                        <th>Precio Venta</th>
                        <th>Fecha Vencimiento</th>
					</tr></thead>
                            <tbody>';	
					
					foreach($dato as $fila)
					{	
						$retorno.= '<tr>
							<td >'. $nl++.'</td>';
						$retorno.= "<td ><button id='eliminar' name='eliminar' onclick='eliminar(". $fila->id_vir.")' class='glyphicon glyphicon-remove'>									</button></td>";    
						$retorno.= '<td >'.$fila->valor2." <br> ".$fila->sabor.'</td>
                                    <td >'.$fila->puntos.'</td>
                                    <td style="text-align: right;">'.$fila->entrada.'</td>
                                    <td style="text-align: right;">'.number_format(($fila->entrada * $fila->puntos),2).'</td>
                                    <td style="text-align: right;">'. number_format($fila->precio_compra,2).'</td>
                                    <td style="text-align: right;">'. number_format(($fila->entrada * $fila->precio_compra),2).'</td>
                                    <td >'.$fila->composicion.'</td>
                                    <td >'.$fila->presentacion.'</td>
                                    <td >'.$fila->unidad.'</td>
                                    <td style="text-align: right;">'.number_format($fila->precio_venta,2).'</td>
                                    <td >'.$fila->fecha_vencimiento.'</td>	
							</tr>';						
						$sum = $sum + ($fila->entrada * $fila->precio_compra);
						$val = $val + ($fila->entrada * $fila->puntos);
					}
					$retorno.=	'<tr>                
					                <th style="text-align: right;" colspan="5">TOTAL PUNTOS</th>
                                    <th style="text-align: right;" >'.number_format($val,2).'</th>
                                    <th style="text-align: right;" >COSTO TOTAL</th>
                                    <th style="text-align: right;" >'.number_format($sum,2).'</th>
                                    <td colspan="6"></td>
            					</tr>';
					if($sum > 0)
					{
						$retorno.='<tr>
                    	<td style="text-align: center;"colspan="3"><button class="btn-primary" onclick="realizaractualizacion()">Guardar actualizacion</button></td>
                                 <td style="text-align: center;"colspan="4"><button class="btn-primary" onclick="cancelaractualizacion()">Cancelar Venta</button></td>
                                 <td colspan="7"></td>
                    </tr></tbody>';
					}
					
		echo $retorno;
	}
	function vervalorizacion()
	{
		echo empresa_valoracion(2);
	}	
}	
?>