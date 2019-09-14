<script type="text/javascript" src="<?php echo  base_url() ?>jsd/almacen.js"></script>
<div id="page-wrapper">
<!-- /#INICIA CUERPO -->

    <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Actualizar Almacen</h1>
                </div>
                <!-- /.col-lg-12 -->
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Lista Productos Para Actualizar Almacen
                </div>
                <div id="tablaproductos"> 
                
                </div>
            </div>
        </div>
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
                                <tr>
                                    <th>#</th>
                                    <th>Nombre Generico</th>
                                    <th>Nombre Comercial</th>
                                    <th>Composicion</th>
                                    <th>Presentacion</th>
                                    <th>Unidad</th>
                                    <th>Sabor</th>
                                    <th>Precio Compra</th>
                                    <th>Precio Venta</th>                                            
                                    <th>Cantidad en Almacen</th>
                                    <th>Opciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <? $n = 1?>
                                <? foreach($totales as $fila):?>
                                <tr>
                                    <td ><?= $n++?></td>                                      
                                    <td ><?= $fila->valor1?></td>
                                    <td ><?= $fila->valor2?></td>
                                    <td ><?= $fila->composicion?></td>
                                    <td ><?= $fila->presentacion?></td>
                                    <td ><?= $fila->unidad?></td>
                                    <td ><?= $fila->sabor?></td>
                                    <td style="text-align: right;"><?= $fila->compra?></td>
                                    <td style="text-align: right;"><?= $fila->venta?></td>
                                    <td style="text-align: right;"><?= $fila->saldo?></td>
                                    <td>
                                        <button class="btn btn-primary" onclick='formactualizar(<?= $fila->idve_producto?>)'>Agregar</button><br>
                                    </td>                                        
                                </tr>                                    
                                <?endforeach?>                                      
                            </tbody>
                        </table>
                    </div>
                    <!-- /.table-responsive -->
                    
                </div>
                <!-- /.panel-body -->
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
                    <h4 class="modal-title" id="exampleModalLabel">Actualizar Cantidad</h4>
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
            <input type="hidden" class="form-control" id="id_linea" name="id_linea" required="required">
            <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">
                        <label>Porcentaje Compra</label>
                        <input class="form-control" id="preciolistas" name="preciolistas" required="required">                            
                    </div> 
                    <div class="form-group">
                        <label>Precio Compra</label>
                        <input class="form-control" id="compra" name="compra" required="required">
                    </div>
                    <div class="form-group">
                        <label>Cantidad</label>
                        <input class="form-control" id="cantidad" name="cantidad" required="required">
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <label>Precio Venta</label>
                        <input class="form-control" id="venta" name="venta" required="required">
                    </div>
                    <div class="form-group">
                        <label>Vencimiento</label>
                         <input type="text" id="fecha" class="form-control" name="fecha" placeholder="Seleccione una fecha"/>
                    </div>        
                </div>
            </div>
        </form>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cerrar</button>
            <button id="Guardaractualizacion" type="button" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-disk"></span> Guardar</button>
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
      });
</script>
   
