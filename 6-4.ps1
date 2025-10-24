$f1="./fichero1.txt"
$f2="./fichero2.txt"
$f="C:\Users\Alumno\Desktop\procesos6.txt"
$cad1= get-content $f1
$cad2= get-content $f2
$cad=$cad1 + $cad2;
Set-Content -path $f -value $cad