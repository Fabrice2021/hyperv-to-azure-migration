Get-VM | Select-Object Name, State, CPUUsage, MemoryAssigned, @{
    Name="IP";Expression={
        (Get-VMNetworkAdapter -VMName $_.Name).IPAddresses -join ","
    }
} | Export-Csv ".\hyperv-inventory.csv" -NoTypeInformation
