param(
    [string]$DnsServer,
    [string]$ZoneName,
    [string]$RecordName,
    [string]$NewIp
)

Add-DnsServerResourceRecordA -Name $RecordName -ZoneName $ZoneName -IPv4Address $NewIp -ComputerName $DnsServer -AllowUpdateAny
