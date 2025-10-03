$p=get-process
$l=$p.length
$cadena="<html><body><center><table>"
$RutaDelFichero="C:\xampp\htdocs\power\index.html"

for ($i=0; $i -lt $l; $i++){
	$cadena=$cadena +"<tr><td>"+$p[$i].processName+"</td><td>"+$p[$i].id+"</td></tr>"
}
$cadena=$cadena+"</table></center></body></html>"
set-content -path $RutaDelFichero -value $cadena
write-host $cadena