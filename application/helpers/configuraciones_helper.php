<?php 

function empresa_valoracion($empresa)
 {
  $fila =& get_instance();  
  $fila->load->model('Configuraciones_model');
  $rol = $fila->Configuraciones_model->empresa_valoracion($empresa);
  $valoreacion = $rol[0]->valoracionproducto;
  return $valoreacion;  
 }
 function selec_configuracion($empresa,$concepto)
 {
    $fila =& get_instance();  
    $fila->load->model('Configuraciones_model');
    $configuracion = $fila->Configuraciones_model->recuperar_configuracion($empresa,$concepto);
    $valor = $configuracion[0]->valor1;
    return $valor;    
 }
 ?> 






