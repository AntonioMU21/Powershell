$p=get-process
$l=$p.length
for ($i=0; $i -lt $l; $i++)
{
	if ($p[$i].id -gt 5000){
	write-host $p.processName[$i] $p[$i].id}
}