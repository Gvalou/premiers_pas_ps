<#
.DESCRIPTION   
Voici la description du script
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
    Default { Write-Host "Saisie invalide"}
}