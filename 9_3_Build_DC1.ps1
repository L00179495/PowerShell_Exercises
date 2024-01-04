#Program to create a new Domain controller named DC1 on windows server 2016

$SERVERNAME = "DC1"
$FOREST = "atu.letterkenny.ie"
$DNSNAME = $SERVERNAME + "." + $FOREST

# Set the IP address for the DC
Rename-Computer -NewName $SERVERNAME
Get-NetIPAddress
New-NetIPAddress -InterfaceIndex 16 -IPAddress 192.168.16.2 -PrefixLength 24 -DefaultGateway 192.168.16.1
Restart-Computer

# Configure AD, DNS
Install-ADDSForest -DomainName $FOREST
Install-WindowsFeature DHCP -IncludeManagementTools

# Configure DHCP, add a single scope
Add-DhcpServerInDC -DnsName $DNSNAME -IPAddress 192.168.16.10
Add-DhcpServerv4Scope -Name InfraServers -StartRange 192.168.16.20 -EndRange 192.168.16.254 -SubnetMask 255.255.255.0

# Set time to sync'h with a local NTP server.
w32tm /config /manualpeerlist:192.168.16.200 /syncfromflags:manual /update
