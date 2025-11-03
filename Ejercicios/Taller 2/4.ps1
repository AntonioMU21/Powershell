$a=Get-LocalUser
$l=$a.length
for ($i=0; $i -lt $l; $i++){
    $des=$a[$i].enabled
    if ($des -eq "False"){
        write-host ("El usuario " + $a[$i].Name + " esta deshabilitado")
    }
}