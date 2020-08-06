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
                    <div class="table-responsive">
                        <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-examples">
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
   
