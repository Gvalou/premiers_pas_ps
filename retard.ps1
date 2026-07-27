<#
Petit script pour tester quelques structures et jouer avec les types de variables.
Toute ressemblance avec des situations ayant existées est purement fortuite.
#>

$retard = read-host -prompt "Minutes de retard "
$financement = read-host -prompt "Etes vous finance par la region ? [oui/non]"

<# Structure IF de première intention. 
Ne prennait pas en compte les réponses différentes et "o" ou "n"

if ($financement -match "oui" -or "") {
    write-host "t'es finance, de quoi tu te plains ?"
}
else {
    $indiv_price = [int]$retard * 0.13
    write-host " tu as perdu $indiv_price euros"
}
#>

Switch -exact ($financement) {
    "oui"   {write-host "t'es finance, de quoi tu te plains ?"
            break }
    "o"     {write-host "t'es finance, de quoi tu te plains ?"
            break }
    "non"   {$indiv_price = [int]$retard * 0.13
            write-host " tu as perdu $indiv_price euros"
            break }
    "n"     {$indiv_price = [int]$retard * 0.13
            write-host " tu as perdu $indiv_price euros"
            break }
    Default {write-host "la reponse n'est pas valide"
            break }
    }
read-host