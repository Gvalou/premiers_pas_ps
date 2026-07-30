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

$i=0
while ($i -lt 5) {
    Get-CimInstance Win32_Processor | Select-Object Name, LoadPercentage

    Start-Sleep -Seconds 1
    $i++
}


