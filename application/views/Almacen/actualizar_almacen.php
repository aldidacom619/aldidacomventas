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
            
            
<!-- /#FIN CUERPO -->
</div>
        <!-- /#page-wrapper -->
<script type="text/javascript">
    $(document).ready(function(){
      var enlace = "<?php echo  base_url() ?>";
      baseurl(enlace);      
      });
</script>
   
