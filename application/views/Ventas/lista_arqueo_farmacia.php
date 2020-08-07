<script type="text/javascript" src="<?php echo  base_url() ?>jsd/ventas.js"></script>
<div id="page-wrapper">
<!-- /#INICIA CUERPO -->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Reporte de ventas a la fecha: <?= $fecha?></h1>
        </div>
                <!-- /.col-lg-12 -->
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Lista de Productos
                </div>
                <!-- /.panel-heading -->
                
                <div class="panel-body">
                    
                <div class="table-responsive">
                        <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-examples">
                            <thead>
                                <tr>
                                    <th>Nro.</th>
                                    <th>Fecha</th>  
                                    <th>Comercial</th>
                                    <th>Generico</th>
                                   
                                    <th>Concentracion</th>
                                    <th>Presentacion</th>
                                    <th>Precio Unitario</th>
                                    
                                     <th>Cantidad</th>                                            
                                    <th>Total Venta</th> 
                                                                  
                                                                       
                                </tr>
                            </thead>
                            <tbody >
                                <? $n = 1; $suma = 0;?>
								<? foreach($totales as $fila):?>
								<tr>
								    <td ><?= $n++?></td> 								    
								    <td ><?= $fila->fecha_hora?></td>
								    <td ><?= $fila->valor1?></td>
								    <td ><?= $fila->valor2?></td>								  
								    <td ><?= $fila->composicion?></td>
								    <td ><?= $fila->presentacion?></td>								    
								    <td style="text-align: right;"><?= number_format($fila->precio,2)?></td>
								    <td style="text-align: right;"><?= $fila->cantidad?></td>
								    <td style="text-align: right;"><?= number_format($fila->total,2)?></td> 
								    						     
								</tr>   
								<? $suma = $suma +$fila->total; ?>                                 
								<?endforeach?>                                      
								<tr>
                                    <th class="alert alert-info" colspan="8" style="text-align: right;"><h4><strong>Total Venta</strong></h4></th>                                                                             
                                    <th style="text-align: right;" ><h4> <strong>Bs.<?= $suma ?>.-</strong> </h4></th>
                                    
                                </tr>
                            </tbody>

                        </table>
                        
                    </div>
                </div>
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>

    <div class="modal fade" id="actualizarcantidad" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="exampleModalLabel">Cantidad del Producto para la venta</h4>
                  </div>
                 <div class="modal-body">
            <div class="row">
                <div class="col-lg-6">
                    <label>Nombre Genérico</label>
                        <input class="form-control" id="generico" name="generico" readonly = "true">
                    
                    
                        <label>Nombre Comercial</label>
                        <input class="form-control" id="comercial" name="generico" readonly = "true">
                    
                    
                        <label>Concentracion</label>
                        <input class="form-control" id="concentracion" name="concentracion" readonly = "true">
                    
                </div>
                <div class="col-lg-6">
                    <label>Presentación</label>
                        <input class="form-control" id="presentacion" name="presentacion" readonly = "true">
                    
                    
                        <label>SABOR</label>
                        <input class="form-control" id="linea2" name="linea2" readonly = "true">
                    
                    
                        <label>Cantidad en almacen</label>
                        <input class="form-control" id="almacen" name="almacen" readonly = "true">
                </div>
            </div>

        <form id="formularioventaproducto">
            <input type="hidden" class="form-control" id="id_prod" name="id_prod" required="required">
            <input type="hidden" class="form-control" id="tieneporcentaje" name="tieneporcentaje" required="required">
            <input type="hidden" class="form-control" id="vencimiento" name="vencimiento" required="required">
            <div class="row">
                <br>
                <legend>Datos de Venta</legend>
                <div class="col-lg-6">
                    <div class="form-group" id = "idprocentajeselect">
                        <label>Porcentaje Venta</label>
                        <SELECT NAME="porcentaje" id = "porcentaje" class="form-control">
                        </SELECT>                             
                    </div>                    
                    <div class="form-group">
                        <label>Precio Venta Unitario</label>
                        <input class="form-control" id="venta" name="venta" required="required">
                    </div>                       
                </div>
                <div class="col-lg-6">            
                    <div class="form-group">
                        <label>Cantidad</label>
                        <input  type="text" class="form-control" id="cantidad" name="cantidad" required="required">
                    </div>                     
                </div>                
            </div>
        </form>
        <div class="alert alert-danger" role="alert" style="display: none;" id="mensajeerror">
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cerrar</button>
            <button id="btnGuardaractualizacion" type="button" class="btn btn-primary" onclick='Guardarventa()'><span class="glyphicon glyphicon-floppy-disk"></span>Guardar</button>
        </div>
    </div>
            </div>
        </div>
    </div>           
            
<!-- /#FIN CUERPO -->
</div>
        <!-- /#page-wrapper -->
<script type="text/javascript">
    $(document).ready(function(){
      var enlace = "<?php echo  base_url() ?>";
      baseurl(enlace);  
      accionesformulario();    
      });
</script>
   
