<?php
$output = shell_exec('powershell -ExecutionPolicy Bypass -File "C:\\xampp\\htdocs\\sql\\Powershellindex.ps1"');
$host="localhost";
$usuario="root";
$clave= "";
$db="procesos";
$conexion=mysqli_connect($host,$usuario,$clave,$db);

if (!$conexion) {die("Error");}
$sql= "select * from proceso";
$resultado=$conexion->query($sql);
$l=mysqli_affected_rows($conexion);
if ($result->$l > 0) {
    echo "<table border='1' cellpadding='5' cellspacing='0'>";
    echo "<tr><th>ID</th><th>Nombre</th><th>ID Proceso</th><th>Uso CPU</th><th>Uso Memoria (MB)</th><th>Fecha</th></tr>";
    while($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>{$row['id']}</td>";
        echo "<td>{$row['nombre']}</td>";
        echo "<td>{$row['id_proceso']}</td>";
        echo "<td>{$row['uso_cpu']}</td>";
        echo "<td>{$row['uso_memoria']}</td>";
        echo "<td>{$row['fecha']}</td>";
        echo "</tr>";
    }
    echo "</table>";
} else {
    echo "No se encontraron procesos.";
}

$conn->close();
?>
?>
