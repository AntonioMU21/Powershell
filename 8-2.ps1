$a=Get-LocalUser
$l=$a.length
$u=read-host -prompt "Introduce el usuario"
$existe=0;
for ($i=0; $i -lt $l; $i++){
	if ($a[$i].Name -eq $u){
		$existe=1;
	}
}
if ($existe -eq 1){
		write-host "El usuario existe"
	}
	else{
	write-host "El usuario no existe"}
