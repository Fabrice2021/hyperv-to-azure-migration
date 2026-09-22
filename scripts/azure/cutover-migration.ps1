param(
    [string]$VmName,
    [string]$ResourceGroup
)

Write-Host "Cutover migration for VM $VmName..."

Stop-VM -Name $VmName -Force

Write-Host "Triggering final replication (via Azure Migrate)..."

az vm start --resource-group $ResourceGroup --name $VmName
Write-Host "VM started in Azure. Proceed with DNS update."