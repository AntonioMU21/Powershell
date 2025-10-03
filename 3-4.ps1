$p=get-process
$l=$p.length
$cadena="<procesos>"
$RutaDelFichero="procesos.xml"
for ($i=0; $i -lt $l; $i++){
	$cadena=$cadena + "<proceso><name>"+$p[$i].processName+"</name><id>"+$p[$i].id+"</id></proceso>"
}
$cadena=$cadena+"</procesos>"
set-content -path $RutaDelFichero -value $cadena
write-host $cadena