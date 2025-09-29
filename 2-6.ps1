$a = Read-Host -prompt "Introduce el id del proceso"
kill $a;
$b= read-host -prompt " Seguro que quieres cerrar el proceso? (S/N)"
if ($b -eq "S")
{ kill $a;}
write-Host "Proceso cerrado correctamente";