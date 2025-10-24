$ruta="C:\Users\Alumno\Desktop\fichero1.txt"
$a=get-content $ruta
$l=$a.length
for ($i=0; $i -lt $l; $i++){
		$partes=$a[$i].split("-")
		write-host $partes[0]
}