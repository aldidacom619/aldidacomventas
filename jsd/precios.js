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
    $('#nuevo_precio').keyup(function () 
    {
         var tem = $('#nuevo_precio').val(); 
         alert(tem);
          var RE = /^[0-9]*$/;
         if (!(RE.test(tem)))
         {
            $('#nuevo_precio').val('');                  
         }             
    });
    $('#porcentaje').change(function () 
    {
      var porcentaje = $('#porcentaje').val();
      var enlace = base_url + "precios/porcentajeid";
        $.ajax({
            type: "GET",
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
function formactualizar(idproducto)
{
    $('#compra').val('');
    $('#venta').val('');
    var enlace = base_url + "precios/datosproducto";
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
                        $('#tablaprecios').html(datos.opcionprecios);
                        if(datos.precioporcentaje == 1)
                        { 
                            
                            $('#compra').attr('readonly', true);
                            $('#venta').attr('readonly', true);
                        }
                        else
                        {
                          
                            $('#compra').attr('readonly', false);
                            $('#venta').attr('readonly', true);
                            $('#venta').val(datos.venta);
                            $('#nuevo_precio').val(datos.venta);
                            
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
function Guardarventa()
{
    if(validarFormulario())
    {
        var enlace = base_url + "precios/guardaractualizacion";
        var datos = $('#formularioventaproducto').serialize();
        $.ajax({
            type: "POST",
            url: enlace,
            data: datos,
            success: function(data)  
            {
                //alert(data);
                var result = JSON.parse(data);
                $.each(result, function(i, datos){
                    if(datos.resultado == 1)
                    {
                        alert(datos.mensaje + "\n"+ datos.mensaje2+ "\n"+ datos.mensaje3);
                    }
                    else
                    {
                        alert(datos.mensaje + "\n"+ datos.mensaje2+ "\n"+ datos.mensaje3);
                        
                        window.setTimeout('location.reload()', 500);                        
                    }
                });
                /*$('#tablaproductos').html(data);          
                $('#venta').val('');
                $('#cantidad').val('');
                $('#fechaven').val('');
                alert('SE REGISTRO CORRECTAMENTE');
                $('#actualizarcantidad').modal('hide');*/
                    
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

function realizaractualizacion()
{
    if(confirm('¿Estas seguro de registrar el ingreso en almacen?'))
    {
        var enlace = base_url + "ventas/registrar_ingreso";
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
