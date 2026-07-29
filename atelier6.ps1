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

#variables de dates
$date=(Get-Date -Format dd/MM/yyyy)
$heure=(Get-Date -Format HH:mm)

#définition de la variable du chemin
$chemin=Read-Host -Prompt "rentrer le chemin souhaite "

#définition variable de comptage
$i=0
foreach ($fic in $(Get-ChildItem -path $chemin -Filter $fic))
{
    $i++ 
}

Write-Host "
========== $date $heure ==========
Emplacement : $chemin
Nombre de fichiers trouves : $((Get-ChildItem -path $chemin).length)
Nombre de fichiers .ps1    : $i
" 

<#pour chaque fichier PS dans c:
foreach ($fic in $(Get-ChildItem $chemin))
{
    #écrire le nom du fichier trouvé
    Write-Host $fic 
}
#>

