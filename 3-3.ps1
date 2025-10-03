$p=get-process
$l=$p.length
$cadena=""
for ($i=0; $i -lt $l; $i++){
	$cadena=$cadena + $p[$i].processName
}
write-host $cadena