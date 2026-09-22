param(
    [string]$VmName
)

Write-Host "Preparing VM $VmName for migration..."

Get-VMSnapshot -VMName $VmName | Remove-VMSnapshot -Confirm:$false

$nic = Get-VMNetworkAdapter -VMName $VmName
Write-Host "Current IPs: " $nic.IPAddresses
Write-Host "Documenter l'IP pour la reconfiguration dans Azure."
