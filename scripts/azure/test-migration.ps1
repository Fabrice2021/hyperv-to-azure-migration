param(
    [string]$VmName,
    [string]$ResourceGroup
)

Write-Host "Testing migrated VM $VmName in RG $ResourceGroup..."
az vm get-instance-view --name $VmName --resource-group $ResourceGroup
