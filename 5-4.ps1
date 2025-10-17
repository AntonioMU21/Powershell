########################################################################
####################Calculo de la prioridad maxima######################
########################################################################
$p=get-process
$l=$p.length
$max=$p[0].basepriority
$proceso=""
for ($i=1;$i -lt $l; $i++)
{
	
	$id=$p[$i].basepriority
	if ($id -gt $max){
		$max=$id;
		$proceso=$p[$i].ProcessName
	}
}
echo "El proceso $proceso tiene prioridad maxima con nivel $max"  
