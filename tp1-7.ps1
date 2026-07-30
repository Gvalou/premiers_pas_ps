<#
.DESCRIPTION   
Voici la description du script
.LINK
https://rb.gy/6uoo8w
#>

write-host "Version de PS : " $PSVersionTable.PSVersion
write-host "$(Get-Date -Format "dd/MM hh:mm")"
write-host "Bonjour $env:USERNAME"
write-host "Vous etes connecte sur la machine $env:COMPUTERNAME"
write-host ""

$service=Read-Host -Prompt "rentre un service (avec la bonne orthographe) "
$status=(Get-Service -Name $service).Status

while ($status -eq "Running") {
    Get-Service $service
    Start-Sleep -Seconds 5
}
