function contar{
	param (
	[string] $nombre)
	$p=Get-Process
	$c=0
	$l=$p.length
	for ($i=0;$i -lt $l; $i++)
	{
		$n=$p[$i].processName
		if ($n -eq $nombre)
		{$c++}
	}
	return $c
}
$nombre=Read-Host -prompt "Introduzca el nombre:"
$resultado= contar -nombre $nombre
write-host "Hay $resultado instancias"