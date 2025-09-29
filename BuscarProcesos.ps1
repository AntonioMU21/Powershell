param (
$proceso
)
$f=0
$p=get-process
$l=$p.length
for ($i=0;$i -lt $l; $i++)
{
	if ($p[$i].processName -eq $proceso){
	$f=1}
	
}
if ($f -eq 1)
	{write-host "Proceso" $proceso "encontrado"}
	else {write-host "Proceso" $proceso "no encontrado"}