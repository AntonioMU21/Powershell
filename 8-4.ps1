$a=get-content -path "C:\Users\Alumno\Desktop\alumnos.txt"
$l=$a.length
for ($i=0; $i -lt $l; $i++){
	$partes=$a[$i].split("-")
	$u=$partes[0]
	remove-localuser -name $u
}