#Program to create a new Domain controller named DC2 on windows server 2016

$SERVERNAME = "DC2"
$FOREST = "atu.letterkenny.ie"
$DNSNAME = $SERVERNAME + "." + $FOREST

# Set the IP address for the DC
Rename-Computer -NewName $SERVERNAME
Get-NetIPAddress
New-NetIPAddress -InterfaceIndex 9 -IPAddress 192.168.10.3 -PrefixLength 24 -DefaultGateway 192.168.10.1
Set-DnsClientServerAddress -InterfaceIndex 9 -ServerAddresses 192.168.10.5
Restart-Computer

# Join the existing Domain
Add-Computer -DomainName $FOREST -Restart

# Install software
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools

# Add this as a second DC
Install-ADDSDomainController -DomainName $FOREST -InstallDns:$true -Credential (Get-Credential "sorna\administrator")

# Configure DHCP
Install-WindowsFeature DHCP -IncludeManagementTools
Add-DhcpServerInDC -DnsName $DNSNAME -IPAddress 192.168.10.10