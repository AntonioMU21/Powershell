new-localuser -name director1 -password (Read-host -AsSecureString "Introduce clave")
write-host "Se ha creado correctamente"
disable-localuser -name director1
get-localuser
remove-localuser director1
write-host "Se borró correctamente"
get-localuser