<?php

class Precios extends CI_Controller
{
	function __construct(){
		parent::__construct();	
		$this->_is_logued_in();	
		$this->load->helper('menu_helper');
		$this->load->helper('configuraciones_helper');	
		$this->load->model('roles_model');
		$this->load->model('ventas_model');				
		$this->load->model('precios_model');
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
			$vista   = selec_configuracion($empresa,"VISTA PRECIOS PRODUCTO");
			$dato['totales'] = $this->ventas_model->$metodo1($empresa);			
			$this->load->view("Inicio/cabecera");				
			$this->load->view("Inicio/menu",$dato);		
			$this->load->view("Precios/".$vista,$dato);		
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
		
		
		$filas = $this->ventas_model->select_almacen_totales_id($id_pro); 
		$porcentaje = $filas[0]->precioporcentaje;
		$option = '<thead><tr><th>#</th><th>Porcentaje(%)</th><th>Precio Actual</th><th>Nuevo Precio</th></tr></thead>';
		if($porcentaje == 1)
		{
			$precios=$this->ventas_model->select_porcentajeprecionproducto_id($id_pro);
			$nl = 1;
			foreach ($precios as $fila) 
			{
				//$option.="<option value = '".$fila->id."'> % ".$fila->porcentaje." - Precio ".$fila->precio_porcentaje."</option>";	
				$option.= '<tr><td >'.$nl++.'</td><td >'.$fila->porcentaje.'</td><td >'.$fila->precio_porcentaje."</td><td><input type = 'number' class='form-control' name = '".$fila->id."' value = '".$fila->precio_porcentaje."'></td></tr>";	
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
	function guardaractualizacion()
	{
		$id_usu = $this->session->userdata('id');
		$fecha_hora = fecha_hora();
		$id_prod = $this->input->post('id_prod');
		//$id_prod = 5;
		$porcentaje = $this->input->post('tieneporcentaje');
		$mensaje = "";
		$nuevo_precio = 0;
		if($porcentaje != 1)
		{
			$mensaje3 = "";
			$mensaje2 = "";
			$mensaje1 = "";
			$precios = $this->ventas_model->select_totales_id($id_prod);
			$precios_anterior = $precios[0]->venta;
			$nuevo_precio = $this->input->post('nuevo_precio');
			if(is_numeric($nuevo_precio))
			{
				if($precios_anterior != $nuevo_precio)
				{
				   $actualizar_total = $this->precios_model->modificar_precios_totales($id_prod,$nuevo_precio);
				   $actualizar_precios = $this->precios_model->registrar_precios_actualizados($id_usu,$id_prod,'',$precios_anterior ,$nuevo_precio,$fecha_hora,'AC');
				   $resultado = 0;
				   $mensaje1 = "SE ACTUALIZO EL PRECIO DE:".$precios_anterior." A ".$nuevo_precio;
				}
				else
				{
					$resultado = 1;
					$mensaje2 = "NO SE ACTULIZO NINGUN VALOR";
				}
			}
			else
			{
				$resultado = 1;
				$mensaje2 = "VALOR DE PRECIO NO VALIDO";
			}			
		}
		else
		{
			$precios=$this->ventas_model->select_porcentajeprecionproducto_id($id_prod);		
			$mensaje1 = "SE ACTUALIZO EL PRECIO DE LOS PORCENTAJES DE: ";
			$mensaje2 = "NO SE ACTUALIZO EL PRECIO DE LOS PORCENTAJES DE";		
			$mensaje3 = "VALOR DE PRECIO NO VALIDO PARA EL PORCENTAJE";	
			$con1 = 0;	
			$con2 = 0;
			$con3 = 0;
			foreach ($precios as $fila) 
			{	
				$precios_anterior = $fila->precio_porcentaje;		 
				$nuevo_precio = $this->input->post($fila->id);
				if(is_numeric($nuevo_precio))
				{	
					if($precios_anterior != $nuevo_precio)
					{
					   if($fila->porcentaje == 100)
					   {
					   	 $actualizar_total = $this->precios_model->modificar_precios_totales($id_prod,$nuevo_precio);	
					   }
					   $actualizar_total2 = $this->precios_model->modificar_precios_porcentaje($fila->id,$nuevo_precio);
					   $actualizar_precios = $this->precios_model->registrar_precios_actualizados($id_usu,$id_prod,$fila->id,$precios_anterior ,$nuevo_precio,$fecha_hora,'AC');	
					   $mensaje1 = $mensaje1." ".$fila->porcentaje."% ";
					   $con1++;
					}
					else
					{					
						$mensaje2 = $mensaje2." ".$fila->porcentaje."% ";
						$con2++;	
					}
				}
				else
				{
					$mensaje3 = $mensaje3." ".$fila->porcentaje."% ";
						$con3++;	
				}

			}
			if($con1!=0 && $con2!=0)
			{ $resultado = 0;}
			elseif($con1!=0 && $con2==0)
			{ 
				 $resultado = 0;
				 $mensaje2 = "";
			}
			elseif($con2!=0 && $con1==0 && $con3==0)
			{ 
				 $resultado = 1;
				 $mensaje1 = "";
				 $mensaje3 = "";
			}
			elseif($con2!=0 && $con1==0 && $con3!=0)
			{
				$resultado = 1;
				$mensaje1 = "";
			}
		}
		$resultado ='[{
				     "resultado":"'.$resultado.'",
					 "mensaje":"'.$mensaje1.'",
					 "mensaje2":"'.$mensaje2.'",
					 "mensaje3":"'.$mensaje3.'"}]';
		echo $resultado;
	}	
}	
?>