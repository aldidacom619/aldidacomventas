<?php $sum = 0;?>
 <div class="row"> 
        <div class="col-lg-12">
<div class="panel-body">
    <div class="dataTable_wrapper">
		<table class="table table-striped table-bordered table-hover" >
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
                <th>Cantidad</th>
                <th>Total</th>
                <th>Fecha Vencimiento</th>
                <th>Opciones</th>
			</tr>	
			<? $nl = 1?> 
			<? foreach($filas as $fila):?>
				<tr>
					<td ><?= $nl++?></td>    
					<td ><?= $fila->valor1?></td>
                    <td ><?= $fila->valor2?></td>
                    <td ><?= $fila->composicion?></td>
                    <td ><?= $fila->presentacion?></td>
                    <td ><?= $fila->unidad?></td>
                    <td ><?= $fila->sabor?></td>
                    <td style="text-align: right;"><?= number_format($fila->precio_compra,2)?></td>
                    <td style="text-align: right;"><?= number_format($fila->precio_venta,2)?></td>
                    <td style="text-align: right;"><?= $fila->entrada?></td>
					<td class = "diego"> <center><?= number_format(($fila->entrada * $fila->precio_compra),2)?></center></td>
					<td class = "diego"> <center><?= $fila->fecha_vencimiento?></center></td>
					<?php 
					$sum = $sum + ($fila->entrada * $fila->precio_compra);
					?>
					<td class = "diego"> 
						
							<button id="eliminar" name="eliminar" onclick='eliminar(<?= $fila->id_vir?>)' class="fa fa-pencil">Eliminar
							</button>
					</td>
				</tr>
			<?endforeach?> 
				<tr>
				
				<th style="text-align: right;" colspan="10">COSTO TOTAL</th>
				<th style="text-align: right;" > <center><?= number_format($sum,2) ?></center></th>
				<td colspan="2"></td>
			</tr>
			
			<?php
				if($sum > 0)
				{
					?><tr>
					<td style="text-align: center;"colspan="7"><button class="btn-primary" onclick="realizaractualizacion()">Guardar actualizacion</button></td>
				    <td style="text-align: center;"colspan="6"><button class="btn-primary" onclick="cancelaractualizacion()">Cancelar Venta</button></td>
					</tr><?php
				}

			?>
		</table>
	</div>
</div>
</div>
</div>		
			
						

