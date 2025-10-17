########################################################################
###########################Calculo de la prioridad###########################
########################################################################
chcp 65001 > null
$m= Read-Host -prompt "Introduce el nombre: "
$p=Get-Process
$l=$p.length
$prioridad=""
for ($i=0;$i -lt $l; $i++){
	$nombre=$p[$i].processName
if ( $nombre -eq $m)
{
	$prioridad=$p[$i].basepriority
}

}
echo "Tiene prioridad $prioridad"