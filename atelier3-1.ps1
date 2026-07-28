$chiffre = Read-Host -Prompt "Entrer un chiffre entre 0 et 9 "
Write-Host "Voici votre chiffre : $chiffre"
if (($chiffre % 2) -eq 0) {
    Write-Host "C'est un chiffre pair"
}
else {
    Write-Host "C'est un chiffre impair"
}

Read-Host
