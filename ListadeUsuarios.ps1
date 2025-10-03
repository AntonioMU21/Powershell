$p=get-localUser
$l=$p.length
$cadena="<html><body><center><table>"
$RutaDelFichero="C:\xampp\htdocs\power\usuarios.html"

for ($i=0; $i -lt $l; $i++){
	$cadena=$cadena +"<tr><td>"+$p[$i].name+"</td><td>"+$p[$i].description+"</td></tr>"
}
$cadena=$cadena+"</table></center></body></html>"
set-content -path $RutaDelFichero -value $cadena
write-host $cadena