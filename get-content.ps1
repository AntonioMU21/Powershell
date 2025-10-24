#get-content .\Sincronizar.ps1 -raw -> como el cat
$texto=get-content .\get-content.ps1
#$texto[0]
#$texto[2]

$l=$texto.length
for ($i=0; $i -lt $l; $i++){
	if (!$texto[$i].startsWith("#")){
		$a=($texto[$i].trim()) #.trim quitar los espacios en blanco
	if ($a -ne ""){
	Write-Host $a}
	}
}