$p=Get-Process
$l=$p.length
write-host "Hay"$l" procesos"
write-host $p[0].processName $p[0].PM;