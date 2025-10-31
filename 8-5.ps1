$a=get-content -path "C:\Users\Alumno\Desktop\alumnos.txt"
$users=get-localuser
$lu=$users.length
$l=$a.length
for ($i=0; $i -lt $l; $i++){
	$partes=$a[$i].split("-")
	$u=$partes[0]
	$c=$partes[1]
	$pw=ConvertTo-SecureString $c -AsPlainText -Force
	$f=0
	for ( $j=0; $j -lt $lu; $j++){
		if ($u -eq $users[$j].name){
			$f=1
		}
		
	}
	if ($f -eq 0){
			new-localuser -name $u -password $pw
		}
		else {
			write-host "El usario $u ya existe"
		}
	}

