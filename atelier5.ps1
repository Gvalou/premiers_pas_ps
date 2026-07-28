<#
.DESCRIPTION   
Voici la description du script
#>

write-host "Version de PS : " $PSVersionTable.PSVersion
write-host "$(Get-Date -Format "dd/MM hh:mm")"
write-host "Bonjour $env:USERNAME"
write-host "Vous etes connecte sur la machine $env:COMPUTERNAME"
write-host ""

<#
$i=10
while ($i -gt 0) {
    Write-Host $i
    $i--
}
#>

for ($i = 10 ; $i -ge 0 ; $i--) {
    Write-Progress -Activity "Traitement en cours" -Status "$($i/10*100)% effectue" -PercentComplete ($i/10*100)
    Start-Sleep -Seconds 1
}