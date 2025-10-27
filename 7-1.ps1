$ruta="C:\Users\Alumno\Desktop\inicio.html"
$contenido=get-content -Path $ruta -raw
$partes=$contenido -split "<body>"
$cadena="<body><center><h1>COMPRA MI CURSO PERRO</h1></center>"

$texto=$partes[0]+$cadena+$partes[1]
set-content -path "C:\Users\Alumno\Desktop\inicio.html" -value $texto
Write-Host $texto