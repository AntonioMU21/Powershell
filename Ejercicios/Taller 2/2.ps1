$a=Get-Content -Path "C:\Users\Alumno\Desktop\usuarios2.txt"
$l=$a.length

for ($i=0; $i -lt $l; $i++){
$partes= $a[$i].Split(":")
$nombre=$partes[0]
$directorio=$partes[5]
write-host ("$nombre - $directorio")
}

