var base_url;
var alertaValidacion = '';
var validarci = false;
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
    var enlace = base_url + "almacen/listaacumulador";
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
      var enlace = base_url + "almacen/porcentajeid";
        $.ajax({
            type: "GET",
            url: enlace,
             data: {id:porcentaje},
            success: function(data) 
            {
                var result = JSON.parse(data);
                    $.each(result, function(i, datos){
                        $('#compra').val(datos.preciocompra);
                        $('#venta').val(datos.precioventa);
                    });                    
            }
        });
    });
}
function formactualizar(idproducto)
{
    $('#compra').val('');
    $('#venta').val('');
	var enlace = base_url + "almacen/datosproducto";
        $.ajax({
            type: "GET",
            url: enlace,
            data: {id:idproducto},
            success: function(data) 
            {
            	if(data == 1)
            	{
            		alert('EL PRODUCTO YA FUE SELECCIONADO');
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
                            $('#venta').attr('readonly', false);
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
        });
}
function Guardaractualizacion()
{
    if(validarFormulario())
    {
        var enlace = base_url + "almacen/guardaractualizacionacumulador";
        var datos = $('#formularioactualizarproducto').serialize();
        $.ajax({
            type: "GET",
            url: enlace,
            data: datos,
            success: function(data)  
            {
                //alert(data);
                $('#tablaproductos').html(data);          
                $('#compra').val('');
                $('#venta').val('');
                $('#cantidad').val('');
                $('#fechaven').val('');
                alert('SE REGISTRO CORRECTAMENTE');
                $('#actualizarcantidad').modal('hide');
            }
        });
    }
    else
    {
       alert("Las opcciones de validación: "+alertaValidacion+"son necesarios");
       alertaValidacion="";
    }
}   

function validarFormulario(){
    var todook = true;
    alertaValidacion = '';     
    /*  
        if($('#preciolistas').val()==''){
            todook = false;
            alertaValidacion += "Precio Listas \n ";
        }
        if($('#descuento').val()==''){
            todook = false;
            alertaValidacion += "Descuento \n ";
        }
        if($('#compra').val()==''){
            todook = false;
            alertaValidacion += "Precio Compra \n ";
        }
        if($('#venta').val()==''){
            todook = false;
            alertaValidacion += "Precio Venta \n ";
        }
        if($('#cantidad').val()==''){
            todook = false;
            alertaValidacion += "Cantidad \n ";
        }
        if($('#fecha').val()==''){
            todook = false;
            alertaValidacion += "Fecha de Vencimiento \n ";
        }*/
    return todook;
}
function eliminar(idvir)
{
    var linea = $('#linea').val();
    var enlace = base_url + "almacen/eliminarproductoacumulador";
        $.ajax({
            type: "GET",
            url: enlace,
             data: {id:idvir},
            success: function(data) 
            {   
                alert('El producto se elimino correctamente');
                $('#tablaproductos').html(data);
            }
    });
}
function cancelaractualizacion()
{
   var enlace = base_url + "almacen/cancelaractualizacion";
        $.ajax({
            type: "GET",
            url: enlace,            
            success: function(data) 
            {
                alert('Se cancelo la actualización');
                $('#tablaproductos').html(data);
            }
    });
}
function realizaractualizacion()
{
    if(confirm('¿Estas seguro de registrar el ingreso en almacen?'))
    {
        var enlace = base_url + "almacen/registrar_ingreso";
        $.ajax({
                type: "GET",
                url: enlace,                 
                success: function(data) 
                {
                    alert(data);
                    window.setTimeout('location.reload()', 500);
                }
        });
    }
    else
    {
      return false;
    }    
}
