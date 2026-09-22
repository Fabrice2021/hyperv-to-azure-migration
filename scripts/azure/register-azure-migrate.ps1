param(
    [string]$SubscriptionId,
    [string]$ResourceGroup,
    [string]$ProjectName
)

Connect-AzAccount
Select-AzSubscription -SubscriptionId $SubscriptionId

New-AzResourceGroup -Name $ResourceGroup -Location "CanadaCentral" -ErrorAction SilentlyContinue

New-AzResource -ResourceGroupName $ResourceGroup `
    -ResourceType "Microsoft.Migrate/migrateProjects" `
    -Name $ProjectName `
    -Location "CanadaCentral" `
    -Properties @{}
