$server = "localhost"
$database = "procesos"
$user = "root"
$password = ""

$connectionString = "server=$server;user id=$user;password=$password;database=$database"
$connection = New-Object MySql.Data.MySqlClient.MySqlConnection
$connection.ConnectionString = $connectionString
write-host "Introduce el codigo"
$p=get-process
$l=$p.length
try {
    $connection.Open()
    Write-Host "Conexión exitosa a MySQL."
	for ($i=0;$i -lt $l;$i++)
	{
		$pro=$p[$i].ProcessName
		$id=$p[$i].ID
	$query = "insert into proceso value ('$pro',$id)"
    $command = New-Object MySql.Data.MySqlClient.MySqlCommand($query, $connection)
	$reader = $command.ExecuteReader()
	    $reader.Close()
	}

    }
catch {
    Write-Host "Error: $($_.Exception.Message)"
}
finally {
    $connection.Close()
}