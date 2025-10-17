###################################################
###############Calculo hilos#######################
###################################################
$p=Get-Process
$l=$p.length
$max=$p[0].handles
for ($i=0;$i -lt $l; $i++){
	$h=$p[$i].handles
	if ($h -gt $max)
	{
		$max=$h
	}
}

write-host $max