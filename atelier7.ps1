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

[int]$chiffre=Read-Host -Prompt "donne un chiffre wesh "

for ($i = 0; $i -le 10; $i++) {
    Write-Host "$chiffre x $i = $($chiffre*$i)"
}