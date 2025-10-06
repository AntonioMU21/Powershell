function compara{
	param (
		[int] $n1,
		[int] $n2
			)
			if ($n1 -gt $n2)
			{$mayor=$n1}
			else
			{$mayor=$n2}
	return $mayor
}
$n1=read-host -prompt "Introduce el primer numero"
$n2=read-host -prompt "Introduce el segundo numero"
$r=compara -n1 $n1 -n2 $n2
Write-Host "El mayor es $r"