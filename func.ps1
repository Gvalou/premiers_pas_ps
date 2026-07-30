#Fichier qui liste les fonctions utiles

function FicSearch {
    param (
        $fic
    )
    $chemin=Read-Host -Prompt "Donner un chemin "
    $fic=Read-Host -Prompt "quel fichier cherches-tu ? (* pour tous)"
    $nbfic=(Get-ChildItem -Path $chemin -File -Filter "*$fic*" | Measure-Object).Count
    Write-Host "
    Nous avons trouve $nbfic fichier(s).
    === $chemin ===
    "
    foreach ($fic in $(Get-ChildItem -Path $chemin -File -Filter "*$fic*")) {
        Write-Host $fic
    }

}