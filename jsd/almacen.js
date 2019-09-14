var base_url;
var alertaValidacion = '';
var validarci = false;
function baseurl(enlace)
{
  base_url = enlace;  
}
function formactualizar(idproducto)
{
	$('#actualizarcantidad').modal('show'); 
/*	var linea = $('#linea').val();
	var enlace = base_url + "index.php/almacen/formulario2";
        
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
                    $('#id_prod').val(datos.id_pro);
                    $('#id_linea').val(linea);
                    $('#generico').val(datos.generico);
                    $('#comercial').val(datos.comercial);
                    $('#concentracion').val(datos.descripcion);
                    $('#presentacion').val(datos.unidad);
                    $('#linea2').val(datos.linea);
                    $('#almacen').val(datos.saldo);
                    });
                    $('#actualizarcantidad').modal('show'); 
            	}            			
            }
        });*/
}