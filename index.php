<?php
$scriptPath="c:\\xampp\\htdocs\\powershell\\index.ps1";
shell_exec("powershell -ExecutionPolicy Bypass -File \"$scriptPath\"");

$htmlFile="c:\\xampp\\htdocs\\powershell\\index.html";
if (file_exists($htmlFile)){
    header("Content-Type: text/html; charset=utf-8");

readfile($htmlFile);
}
else
    {
        echo "Error: el archivo HTML no fue generado.";
    }
    ?>