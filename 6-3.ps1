# Obtener lista de procesos
$a = Get-Process

# Ruta del archivo de salida
$ruta = "C:\Users\Alumno\Desktop\procesos.txt"

# Vaciar el archivo antes de escribir
Clear-Content -Path $ruta -ErrorAction SilentlyContinue

# Recorrer todos los procesos
for ($i = 0; $i -lt $l; $i++) {
    if ($a[$i].SI -ne 0) {
        Add-Content -Path $ruta -Value $a[$i].ProcessName
    }
}