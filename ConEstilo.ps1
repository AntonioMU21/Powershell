$p=get-localUser
$l=$p.length

$RutaDelFichero="C:\xampp\htdocs\power\usuariosEstilo.html"
$readbuffer=Get-Content -path "estilos.css"
$cadena="<html><head><style>"+$readbuffer+"</style></head><body><center><table>"
for ($i=0; $i -lt $l; $i++){
	$cadena=$cadena +"<tr><td>"+$p[$i].name+"</td><td>"+$p[$i].description+"</td></tr>"
}
$cadena=$cadena+"</table></center></body></html>"
set-content -path $RutaDelFichero -value $cadena
write-host $cadena