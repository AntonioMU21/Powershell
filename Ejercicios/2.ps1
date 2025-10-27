$ruta="C:\Users\Alumno\Desktop\correos.txt"
$contenido= get-content $ruta -raw
$parte1=$contenido -split "\\n"
$l=$parte1.length
$parte2= $parte2 -split "@"
$cadena=""
for ($i=0; $i -lt $l; $i++){
	$cadena=$cadena+$parte2[$i]
}
$parte2=$cadena -split "@"
#set-content -path "C:\Users\Alumno\Desktop\usuarios.txt" -value $partes[0]
write-host $cadena
