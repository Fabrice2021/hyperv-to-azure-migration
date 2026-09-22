param(
    [string]$AzureGatewayIp
)

Write-Host "Testing connectivity to Azure VPN gateway..."
Test-NetConnection -ComputerName $AzureGatewayIp -Port 443
