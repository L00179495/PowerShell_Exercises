#PowerShell commands to set the DHCP IP address scope range and Excluded IP address range

Add-DhcpServerv4Scope -name "L00179495_Scope" -StartRange 192.168.16.1 -EndRange 192.168.16.254 -SubnetMask 255.255.255.0 -State Active
Add-DhcpServerv4ExclusionRange -ScopeID 10.1.1.0 -StartRange 192.168.16.1 -EndRange 192.168.16.10
Set-DhcpServerv4OptionValue -OptionID 3 -Value 10.1.1.1 -ScopeID 10.1.1.0 -ComputerName DC1.atu.letterkenny.ie