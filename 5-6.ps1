###################################################
###############Calculo tiempo medio################
###################################################
$c=0;
$p=Get-Process
$l=$p.length
$t=0;
for ($i=0;$i -lt $l; $i++){
	$cpu=$p[$i].CPU
	$c++
	$t=$t+$cpu;
}
$t=$t/$c
write-host "El tiempo medio de uso de CPU es $t"