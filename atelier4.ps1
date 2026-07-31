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

#afficher le menu
Write-Host "====== MENU ======

1 - Afficher la liste des Services
2 - Afficher la liste des Processus
3 - Quitter
"
#réponse de l'utilisateur
$choix = Read-Host -Prompt "Votre reponse "

#le SWITCH
switch -exact ($choix) {
    "1" {
        Get-Service | Sort-Object -Property status
        break 
    }
    "Services" { 
        Get-Service | Sort-Object -Property status
        break
    }
    "2" {
        Get-Process | Select-Object Id , ProcessName
        break 
    }
    "Processus" {
        Get-Process | Select-Object Id , ProcessName
        break
    }
    "3" {
        break 
    }
    "Quitter" {
        break 
      }
    Default { Write-Host "Saisie invalide"
    break 
    }
}

Write-Host "

"
$jour = (get-date).DayOfWeek
switch ($jour) {
    Monday { 
        Write-Host "Début de semaine, courage !"
        break 
    }
    Tuesday {
        Write-Host "On a parlé de quoi hier ?"
        break
     }
    Wednesday {
        Write-Host "Milieu de semaine, on tient bon !"
        break
    }
    Thursday {
        Write-Host "Plus que deux jours avant le week-end."
        break
    }
    Friday {
        Write-Host "EPCF ? C’est bientôt le week-end !"
        break
    }
    Default { 
        Write-Host "C'est le week-end !"
        break
    }
}
