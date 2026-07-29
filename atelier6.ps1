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

#définition d'un fichier powershell
$fic="*.ps1"
$date=(Get-Date -Format dd/MM/yyyy)
$heure=(Get-Date -Format HH:mm)

Write-Host "
========== $date $heure ==========
Nombre de fichiers trouves : $((Get-ChildItem -Recurse c:).length)
" 

#pour chaque fichier PS dans c:
foreach ($fic in $(Get-ChildItem -Recurse c:))
{
    #écrire le nom du fichier trouvé
    Write-Host $fic 
}

