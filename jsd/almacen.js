var base_url;
var alertaValidacion = '';
var validarci = false;
function baseurl(enlace)
{
  base_url = enlace;  
}
function formactualizar(idproducto)
{
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
                    $('#generico').val(datos.valor1);
                    $('#comercial').val(datos.valor2);
                    $('#concentracion').val(datos.composicion);
                    $('#presentacion').val(datos.presentacion);
                    $('#linea2').val(datos.sabor);
                    $('#almacen').val(datos.saldo);
                    });
                    $('#actualizarcantidad').modal('show'); 
            	}            			
            }
        });
}