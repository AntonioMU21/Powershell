$texto=get-content .\tareas.txt
$l=$texto.length
for ($i=0;$i -lt $l; $i++){
	$a=get-Process -name $texto[$i]	#para empezar el proceso simplemente con Start-Process $texto[$i]
	Stop-Process -id $a.id
}
