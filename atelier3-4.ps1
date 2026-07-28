<#
.DESCRIPTION   
Il reste plein d'optimisation à faire, mais pour l'instant ça fonctionne.
#>

write-host "Version de PS : " $PSVersionTable.PSVersion
write-host "$(Get-Date -Format "dd/MM hh:mm")"
write-host "Bonjour $env:USERNAME"
write-host "Vous etes connecte sur la machine $env:COMPUTERNAME"
write-host ""

#ipv4 de la carte Ethernet
$ip=((Get-NetIPConfiguration -InterfaceAlias Ethernet).IPv4Address.IPAddress)

if ($ip -match "169.254.*") {
    Write-Host "Cette machine a une adresse APIPA"
}
else {
    Write-Host "
    ===== WINDOWS IP CONFIGURATION =====

    Host Name....................: $((Get-Host).Name)
    DNS Suffix Search List.......: $((Get-DnsClientGlobalSetting).SuffixSearchList)

    Ethernet adapter EthernetX:
    Description.......... : $((Get-NetIPConfiguration -InterfaceAlias Ethernet).InterfaceDescription)
    Physical address..... : $((Get-NetAdapter -Name Ethernet).MacAddress) 
    DHCP Enabled......... : $((Get-NetIPInterface -InterfaceAlias Ethernet -AddressFamily IPv4).dhcp)
    IPv4 Address......... : $ip 
    Subnet Mask.......... : "/"$((Get-NetIPConfiguration -InterfaceAlias Ethernet).IPv4Address.prefixlength)
    Default Gateway...... : $((Get-NetIPConfiguration -InterfaceAlias Ethernet).IPv4DefaultGateway.NextHop)
    DNS Servers.......... : $((Get-NetIPConfiguration -InterfaceAlias Ethernet).DNSServer.ServerAddresses)

    "
}

Read-Host