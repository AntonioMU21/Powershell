###################################
#############FUNCIONES#############
###################################
function mensaje
{
	param (
	[string]$Nombre
			)
Write-Output "Hola, $Nombre"	
}
mensaje -Nombre Antonio