$p=get-process
$l=$p.length
for ($i=0; $i -lt $l; $i++)
{
	if ($p[$i].processName -eq "notepad"){
$id=$p[$i].id	; 
	kill $id;}
}
