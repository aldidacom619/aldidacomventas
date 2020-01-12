<script type="text/javascript" src="<?php echo  base_url() ?>jsd/almacen.js"></script>
<div id="page-wrapper">
<!-- /#INICIA CUERPO -->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Detalle de Ingreso de Productos al Almacen</h1>
        </div>
                <!-- /.col-lg-12 -->
    </div>
  
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading"> 
                    Lista de Productos Almacen
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="dataTable_wrapper">
                        <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                            <thead>
                                <tr class="success">
                                    <th>#</th>
                                   
                                    <th>Nombre Generico</th>                                   
                                    <th>Presentacion</th>
                                    <th>Sabor</th> 
                                    <th>Entrada</th>
                                    <th>salida</th>                                            
                                    <th>Cant. en Alm.</th> 
                                   
                                    <th>Precio Compra Uni.</th>
                                    <th>Total Compra</th>
                                    <th>Precio Venta Uni.</th>                                            
                                    <th>Total Venta</th>                                                                      
                                    <th>Fecha Venc.</th>                                    
                                    <th>Fecha Ingreso</th>                                    
                                </tr>
                            </thead>
                            <tbody>
                                <? $n = 1;
                                  
                                   $total_compra = 0;
                                   $total_venta = 0;?>
                                <? foreach($totales as $fila):?>
                                <tr>
                                    <td ><?= $n++?></td> 
                                                                       
                                    <td ><?= $fila->valor2 ."<br>".$fila->valor1?></td>
                                   
                                    <td ><?= $fila->presentacion?></td>
                                     <td ><?= $fila->sabor?></td> 
                                    <td style="text-align: right;"><?= $fila->entrada?></td>
                                    <td style="text-align: right;"><?= $fila->salida?></td>
                                    <td class="alert alert-warning" style="text-align: right;"><?= $fila->saldo?></td>
                                    
                                    <td style="text-align: right;"><?= $fila->precio_compra?></td>
                                    <td  class="alert alert-info" style="text-align: right;"><?= ($fila->precio_compra*$fila->entrada)?></td>
                                    <td style="text-align: right;"><?= $fila->precio_venta?></td>
                                    <td  class="alert alert-danger" style="text-align: right;"><?= ($fila->precio_venta*$fila->entrada)?></td>
                                    <td ><?= $fila->fecha_vencimiento?></td>
                                    <td ><?= $fila->fecha?></td>          
                                </tr>     
                                <? 
                                  
                                   $total_compra = $total_compra + ($fila->precio_compra*$fila->entrada);
                                   $total_venta = $total_venta + ($fila->precio_venta*$fila->entrada); ?>                            
                                <?endforeach?>                                      
                            </tbody>
                        </table>
                        <div class="panel-heading">
                            Resumen total
                        </div>
                        <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover" >
                           <thead>
                                <tr>
                                    
                                   
                                    
                                    
                                    <th class="alert alert-info" colspan="2">Total Compra</th>
                                                                             
                                    <th class="alert alert-danger">Total Venta</th>                                                                      
                                    <th colspan="2">Utilidad</th>                                    
                                    
                                </tr>
                                <tr>
                                   
                                 
                                    
                                    <th class="alert alert-info" colspan="2"><?= $total_compra ?></th>
                                    <th class="alert alert-danger"><?= $total_venta ?></th>                                                                      
                                    <th colspan="2"><?= $total_venta -$total_compra ?></th>                                    
                                </tr>
                            </thead>
                            <tbody>
                        </table>
                    </div>
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
                    <h4 class="modal-title" id="exampleModalLabel">Actualizar Cantidad Datos del Producto</h4>
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

        <form id="formularioactualizarproducto">
            <input type="hidden" class="form-control" id="id_prod" name="id_prod" required="required">
            <input type="hidden" class="form-control" id="tieneporcentaje" name="tieneporcentaje" required="required">
            <input type="hidden" class="form-control" id="vencimiento" name="vencimiento" required="required">
            <div class="row">
                <br>
                <legend>Datos de Ingreso Almacen</legend>
                <div class="col-lg-6">
                    <div class="form-group" id = "idprocentajeselect">
                        <label>Porcentaje Compra</label>
                        <SELECT NAME="porcentaje" id = "porcentaje" class="form-control">
                        </SELECT>                             
                    </div> 
                    <div class="form-group">
                        <label>Precio Compra Unitario</label>
                        <input class="form-control" id="compra" name="compra" required="required">
                    </div>
                    <div class="form-group">
                        <label>Cantidad</label>
                        <input type="number" class="form-control" id="cantidad" name="cantidad" required="required">
                    </div>
                </div>
                <div class="col-lg-6">                    
                    <div class="form-group">
                        <label>Precio Venta</label>
                        <input class="form-control" id="venta" name="venta" required="required">
                    </div>    
                    <div class="form-group" id = "idvencimientoselect">
                        <label>Vencimiento</label>
                         <input type="text" id="fechaven" class="form-control" name="fechaven" placeholder="Seleccione una fecha"/>
                    </div>                        
                </div>                
            </div>
        </form>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cerrar</button>
            <button id="btnGuardaractualizacion" type="button" class="btn btn-primary" onclick='Guardaractualizacion()'><span class="glyphicon glyphicon-floppy-disk"></span> Guardar</button>
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
   
