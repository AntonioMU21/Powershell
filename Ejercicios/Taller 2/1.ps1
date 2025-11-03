$a=Get-Content -Path "C:\Users\Alumno\Desktop\usuarios1.txt"
$l=$a.length

for ($i=0; $i -lt $l; $i++){
$partes= $a[$i].Split(":")
$nombre=$partes[0]
$clave=$partes[1]
write-host ("$nombre - $clave")
}

