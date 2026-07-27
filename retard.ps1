<#
Petit script pour tester quelques structures et jouer avec les types de variables.
Toute ressemblance avec des situations ayant existées est purement fortuite.
#>

$retard = read-host -prompt "Minutes de retard "

$financement = read-host -prompt "Etes vous finance par la region ? [oui/non]"

if ($financement -match "oui") {
    write-host "t'es finance, de quoi tu te plains ?"
}
else {
    $indiv_price = [int]$retard * 0.13
    write-host " tu as perdu $indiv_price euros"
}

read-host