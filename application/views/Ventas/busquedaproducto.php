<? $n = 1;?>
<? foreach($totales as $fila):?>
<tr>
    <td ><button onclick='formactualizar(<?= $fila->idve_producto?>)' class="glyphicon glyphicon-shopping-cart"><?= " ".$n++?></button></td> 
    
    <td ><?= $fila->valor2?></td>
    <td ><?= $fila->valor1?></td>
  
    <td ><?= $fila->composicion?></td>
    <td ><?= $fila->presentacion?></td>
    <td ><?= $fila->nombre_linea?></td>                                    
       <td style="text-align: right;"><?= $fila->venta?></td>
    <td style="text-align: right;"><?= $fila->saldo?></td>      
</tr>                                    
<?endforeach?> 