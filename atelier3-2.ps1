
if ($env:USERNAME -match $(Get-LocalGroupMember Administrateurs)) {
    Write-Host "Un grand pouvoir implique de grande responsabilités"
}
else {
    write-host "Bonjour $env:USERNAME"
}