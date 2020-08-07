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

 

 function fecha()
 {
    /*$datestring = " %Y-%m-%d - %h:%i:%a"; 
    $time = time(); 
    $fecha =  mdate($datestring, $time);*/
    $fecha = date('Y-m-j H:i:s');
    $nuevafecha = strtotime ( '-6 hour' , strtotime ( $fecha ) ) ;
    $fecha = date ( 'Y-m-j' , $nuevafecha );
    return $fecha;
 }
 function fecha_hora()
 {
    /*$datestring = " %Y-%m-%d - %h:%i:%a"; 
    $time = time(); 
    $fecha =  mdate($datestring, $time);*/
    $fecha = date('Y-m-j H:i:s');
    $nuevafecha = strtotime ( '-6 hour' , strtotime ( $fecha ) ) ;
    $fecha = date ( 'Y-m-j H:i:s' , $nuevafecha );
    return $fecha;
 }

 ?> 