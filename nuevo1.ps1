$server = "localhost"
$database = "almacen"
$user = "root"
$password = ""

$connectionString = "server=$server;user id=$user;password=$password;database=$database"
$connection = New-Object MySql.Data.MySqlClient.MySqlConnection
$connection.ConnectionString = $connectionString
try {
    $connection.Open()
    Write-Host "Conexión exitosa a MySQL."
$query = "SELECT * FROM productos"
    $command = New-Object MySql.Data.MySqlClient.MySqlCommand($query, $connection)
    $reader = $command.ExecuteReader()
    while ($reader.Read()) {
        Write-Host ("Codigo: " + $reader["codigo"] + " | Nombre: " + $reader["producto"])
    }
   
    $reader.Close()
    }
catch {
    Write-Host "Error: $($_.Exception.Message)"
}
finally {
    $connection.Close()
}