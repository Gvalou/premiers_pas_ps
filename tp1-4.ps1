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

function FicSearch {
    param (
        $fic
    )
    $chemin=Read-Host -Prompt "Donner un chemin "
    $nbfic=(Get-ChildItem -Path $chemin -File -Filter "*$fic*" | Measure-Object).Count
    Write-Host "
    Nous avons trouve $nbfic fichier(s).
    === $chemin ===
    "
    foreach ($fic in $(Get-ChildItem -Path $chemin -File -Filter "*$fic*")) {
        Write-Host $fic
    }

}

do {
    Write-Host "
    ===== MENU =====

    1) Afficher la date
    2) Lister les fichiers
    3) Quitter

    "
    $choix=Read-Host -Prompt "Choisissez un chiffre pour acceder a l'option voulue"

    switch ($choix) {
        1 { 
            Get-Date -Format dddd-dd-MMMM
            break
        }
        2 {
            #Essai de filtrage
            $fic=Read-Host -Prompt "quel fichier voulez-vous lister ? (* pour tous)" 
            #lister les fichiers
            FicSearch -fic $fic
            break
        }
        3 { break }
        Default { 
            Write-Host "saisie invalide"
            break
        }
    }

} while (
    <# Condition that stops the loop if it returns false #>
    $choix -ne "3"
)
exit