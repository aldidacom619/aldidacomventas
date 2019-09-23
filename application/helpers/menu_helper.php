<?php 
 function rol_registrado($iduser, $codopcion)
 {
  $fila =& get_instance();  
  $fila->load->model('Roles_model');
  $rol = $fila->Roles_model->verificar_rol($iduser,$codopcion);
  //$rol = true;
  if($rol)
  {
    return true;
  }
  else
  { 
    return false;
  }
 }

 function empresa_valoracion($empresa)
 {
  $fila =& get_instance();  
  $fila->load->model('Roles_model');
  $rol = $fila->Roles_model->empresa_valoracion($empresa);
  $valoreacion = $rol[0]->valoracionproducto;
  return $valoreacion;  
 }

 ?> 