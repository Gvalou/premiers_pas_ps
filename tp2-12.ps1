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
. .\departement_fr.txt

$secret = get-content .\departement_fr.txt | get-random -count 1

do {
    $guess = 0
    #demander une lettre
    $letter = Read-Host "Entrez une lettre"
    #vérifier si la lettre est dans le mot secret
    if ($secret -like "*$letter*") {
        Write-Host "La lettre $letter est dans le mot secret"
        #afficher le mot secret avec les lettres trouvées
        $display = ""
        foreach ($char in $secret.ToCharArray()) {
            if ($char -eq $letter) {
                $display += $char
            } else {
                $display += "_"
            }
        }
        #afficher le mot secret avec toutes les lettres trouvées même celles déjà trouvées
        foreach ($char in $secret.ToCharArray()) {
            if ($display -like "*$char*") {
                $display += $char
            } else {
                $display += "_"
            }
        }
        Write-Host "Mot secret : $display
        $guess++

    }
} until (
    $guess -eq 6
)