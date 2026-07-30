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

. .\func.ps1



#chemin dans lequel on va chercher les fichiers
$chemin=Read-Host -Prompt "Dans quel disque voulez vous faire l'audit ? (c:\ ou d:\)"
#temps souhaité depuis la dernière modif (en jour) 
[int]$laps=Read-Host -Prompt "Time since last modif in days "

<# Ruines de réflexion
fichiers ciblés
#$target=Get-ChildItem -Path $chemin -File -Recurse
#nb de jours depuis dernière modif du fichier
#$modif=($target | New-TimeSpan).Days
#durée depuis derniere modif
#$duree=(New-TimeSpan -Start $laps -End (Get-Date))
#>

foreach ($fic in $(Get-ChildItem -Path $chemin -File -Recurse)) {
    if (($fic | New-TimeSpan).Days -ge $laps) {
        <# afficher le fichier (nom + chemin + poids en Mo + last modif) #>
        Write-Host "$($fic.Name) | $($fic.FullName) | $($fic.LastWriteTime)"
    }
    
}