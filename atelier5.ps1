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

#=====ATELIER 5.1=====
$i=10
while ($i -gt 0) {
    Write-Host $i
    $i--
    Start-Sleep -Milliseconds 150
}
Write-Host "PAF ! PASTEQUE !"
Start-Sleep -Seconds 1

<#write-progress à implémenter plus tard
for ($i = 0 ; $i -le 10 ; $i++) {
    Write-Progress -Activity "Traitement en cours" -Status "$($i/10*100)% effectue" -PercentComplete ($i/10*100)
    Start-Sleep -Seconds 1
}
#>

#=====ATELIER 5.2=====
do {
    Write-Host "
    ===== MENU =====

    1) option 1
    2) option 2
    3) option 1 quand meme
    4) la reponse D
    5) quitter
    "
    $choix=Read-Host -Prompt "Choisissez un chiffre pour acceder a l'option voulue"
} while (
    <# Condition that stops the loop if it returns false #>
    $choix -ne "5"
)

#ESPACE ENTRE LES ATELIERS
Write-Host "

"

#=====ATELIER 5.3=====
$i=1
Write-Host "C'est le tour numero $i"
do {
    $choix=Read-Host -Prompt "Voulez-vous continuer ? [O/N]"
    if ($choix -eq "O") {
        $i++
    }
} until (
    $choix -eq "N"
)
Write-Host "La premiere boucle est terminee apres $i tours."

