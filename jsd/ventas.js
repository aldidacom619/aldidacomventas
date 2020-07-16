var base_url;
var swalaValidacion = '';
var validarci = false;
var valor = ""; 
var tipoporcentaje;
function baseurl(enlace)
{ 
  base_url = enlace;  
}
function accionesformulario()
{   
    $("#fechaven").datepicker({
    
      format: "yyyy-mm-dd",
      orientation: "top left",
      language: "es" 
    });
    $('#cantidad').keyup(function () 
    {
         var tem = $('#cantidad').val(); 
         //var RE = /^\d*\.?\d*$/;
         var RE = /^[0-9]*$/;
         if (!(RE.test(tem)))
         {
            $('#cantidad').val('');                  
         }         
    });
    $('#compra').keyup(function () 
    {
         var tem = $('#compra').val(); 
         var RE = /^\d*\.?\d*$/;         
         if (!(RE.test(tem)))
         {
            $('#compra').val('');                  
         }         
    });
    $('#venta').keyup(function () 
    {
         var tem = $('#venta').val(); 
         var RE = /^\d*\.?\d*$/;         
         if (!(RE.test(tem)))
         {
            $('#venta').val('');                  
         }         
    });
    var enlace = base_url + "ventas/listaacumulador";
    $.ajax({
        type: "GET",
        url: enlace,        
        success: function(data) 
        {
            $('#tablaproductos').html(data);
        }
    }); 


    $('#porcentaje').change(function () 
    {
      var porcentaje = $('#porcentaje').val();
      var enlace = base_url + "ventas/porcentajeid";
        $.ajax({
            type: "POST",
            url: enlace,
             data: {id:porcentaje},
            success: function(data) 
            {
                var result = JSON.parse(data);
                    $.each(result, function(i, datos){
                        $('#venta').val(datos.preciocompra);
                       
                    });                    
            }
        });
    });
}

function cargaracumulador()
{
    var enlace = base_url + "ventas/listaacumulador";
    $.ajax({
        type: "GET",
        url: enlace,        
        success: function(data) 
        {
            $('#tablaproductos').html(data);
        }
    }); 
}
function formactualizar(idproducto)
{
    $('#compra').val('');
    $('#venta').val('');
    $('#cantidad').val('');
    $('#mensajeerror').hide();
    swalaValidacion="";
	var enlace = base_url + "ventas/datosproducto";
        $.ajax({
            type: "POST",
            url: enlace,
            data: {id:idproducto},
            success: function(data) 
            {
            	if(data == 1)
            	{
            		//swal('EL PRODUCTO YA FUE SELECCIONADO');
                    swal('EL PRODUCTO YA FUE SELECCIONADO')                     
            	}
            	else
            	{
            		if(data == 2)
                    {
                        swal('CANTIDAD INSUFICIENTE EN ALMACEN');
                    }   
                    else
                    {
                        var result = JSON.parse(data);
                        $.each(result, function(i, datos){
                            $('#id_prod').val(datos.idve_producto);
                            $('#tieneporcentaje').val(datos.precioporcentaje);
                            $('#vencimiento').val(datos.vencimiento);
                            $('#generico').val(datos.valor1);
                            $('#comercial').val(datos.valor2);
                            $('#concentracion').val(datos.composicion);
                            $('#presentacion').val(datos.presentacion);
                            $('#linea2').val(datos.sabor);
                            $('#almacen').val(datos.saldo);
                            $('#porcentaje').html(datos.opcionprecios);
                            tipoporcentaje = datos.precioporcentaje;
                            if(datos.precioporcentaje == 1)
                            { 
                                $('#idprocentajeselect').show();
                                $('#compra').attr('readonly', true);
                                $('#venta').attr('readonly', true);
                            }
                            else
                            {
                                $('#idprocentajeselect').hide();
                                $('#compra').attr('readonly', false);
                                $('#venta').attr('readonly', true);
                                $('#venta').val(datos.venta);
                            } 
                            if(datos.vencimiento == 1)
                            { 
                                $('#idvencimientoselect').show();
                                $('#fechaven').attr('readonly', false);                            
                            }
                            else
                            {
                                $('#idvencimientoselect').hide();
                                $('#fechaven').attr('readonly', true);
                            }                     
                        });
                        $('#actualizarcantidad').modal('show'); 
                    }
            	}            			
            }
        });
}
function Guardarventa()
{
    if(validarFormulario())
    {
        var enlace = base_url + "ventas/guardarproductosacumulador";
        var datos = $('#formularioventaproducto').serialize();
        $.ajax({
            type: "POST",
            url: enlace,
            data: datos,            
            success: function(data)  
            {              
                var result = JSON.parse(data);
                $.each(result, function(i, datos){                                  
                    if(datos.resultado == 1)
                    {                        
                        $('#venta').val(''); 
                        $('#cantidad').val('');
                        $('#fechaven').val('');
                       // swal('SE REGISTRO CORRECTAMENTE');                        
                        $('#actualizarcantidad').modal('hide');
                    }
                    else
                    {
                        $('#mensajeerror').html(datos.mensaje);
                        $('#mensajeerror').show();                      
                    }
                });             
            }
        });
        cargaracumulador();
        
    }
    else
    {
       $('#mensajeerror').html(swalaValidacion);
       $('#mensajeerror').show();
       swalaValidacion="";
    }
}   

function validarFormulario(){
    var todook = true;   
    if (tipoporcentaje == 1)
    {
        if($('#porcentaje').val()=='-1'){
            todook = false;
            swalaValidacion += "* Seleccionar un porcentaje <br>";
        }
    }      
    if($('#cantidad').val()==''){
        todook = false;
        swalaValidacion += "* Completar la cantidad <br>";
    }    
    return todook;
}
function eliminar(idvir)
{
    var linea = $('#linea').val();
    var enlace = base_url + "ventas/eliminarproductoacumulador";
        $.ajax({
            type: "POST",
            url: enlace,
             data: {id:idvir},
            success: function(data) 
            {   
                swal('El producto se elimino correctamente');
                $('#tablaproductos').html(data);
            }
    });
}
function cancelaractualizacion()
{
   var enlace = base_url + "ventas/cancelaractualizacion";
        $.ajax({
            type: "POST",
            url: enlace,            
            success: function(data) 
            {
                swal('Se cancelo la actualización');
                $('#tablaproductos').html(data);
            }
    });
}
function realizaractualizacion()
{
    if(confirm('¿Estas seguro de registrar el ingreso en almacen?'))
    {
        var enlace = base_url + "ventas/registrar_ingreso";
        $.ajax({
                type: "POST",
                url: enlace,                 
                success: function(data) 
                {
                    var result = JSON.parse(data);
                    $.each(result, function(i, datos){                                  
                        swal(datos.mensaje);                        
                    }); 
                    window.setTimeout('location.reload()', 500);
                }
        });
    }
    else
    {
      return false;
    }    
}
