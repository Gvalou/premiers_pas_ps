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

$ip=Read-Host -Prompt "Give me IPv4 address please so I can exist "

#c'est pas opti mais ça marche
#ignorer les cas où l'adresse ip ne resemble à rien (172.25.486.999) qui passerai quand même.
switch -Regex ($ip) {
    ^10\. { Write-Host "10. type address" 
    break
    }
    ^172\.1[6-9]\. { Write-Host "172.1* type address" 
    break}
    ^172\.2[0-9]\. { Write-Host "172.2* type address" 
    break}
    ^172\.3[0-2]\. { Write-Host "172.3* type address" 
    break}
    ^192\.168\. { Write-Host "192.168 type address" 
    break}
    Default { Write-Host "wallah jsuis perdu" 
    break}
}