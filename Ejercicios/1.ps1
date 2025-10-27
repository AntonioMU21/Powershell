$ruta="C:\script\index.html"
$parte= $ruta -split "\\"
write-host "El nombre del fichero es:" $parte[2]