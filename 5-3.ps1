########################################################################
######################Calculo de los segundos###########################
########################################################################
$p=get-process
$l=$p.length
$max=$p[0].CPU
$proceso=""
for ($i=1;$i -lt $l; $i++)
{
	
	$id=$p[$i].CPU
	if ($id -gt $max){
		$max=$id;
		$proceso=$p[$i].ProcessName
	}
}
echo "El proceso tiene " $max " segundos y se llama: " $proceso
