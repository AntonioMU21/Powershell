$fichero="listado.md"
$buffer=Get-Content -path $fichero
$l=$buffer.length
for ($i=0; $i -lt $l; $i++){
	start-process $buffer[$i]; #o stop-process -name $buffer[$i]
}