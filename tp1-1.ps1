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

#demande l'adresse
$ip=Read-Host -Prompt "entrer une adresse ip valide "

#ping l'adresse
Test-Connection -ComputerName $ip -Count 1 -Quiet

#voir si l'adresse est joignable
if ($?) {
    Write-Host "l'adresse est joignable"
}
else {
    Write-Host "l'adresse n'est pas joignable"    
}