#########################################
##########Lectura de ficheros############
#########################################
$fichero="readme1.dm"
$buffer=Get-Content -path $fichero
$l=$buffer.length
for ($i=0; $i -lt $l; $i++){
	write-host $buffer[$i];
}