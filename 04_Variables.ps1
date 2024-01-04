<# Assign variable in powershell
The default value of any variable is $null. 
To assign a variable in PowerShell, you can use the "=" operator#>

$myVariable = "sorna", 301, "atu", "letterkenny"
Write-Host $myVariable

#clear-variable is used to remove the value stored in the `$myVariable` variable
clear-variable -Name myVariable

#Remove-Variable is used to remove the value stored in the `$myVariable` variable
Remove-Variable -Name myVariable

<#declaring a variable with a specific type
 declare the variable "$name" as a string type and "$age" as an integer type.#>

[string]$name = "John"
[int]$age = 25

$name.GetType()
$age.GetType()

#create a DateTime object with a specific date and time by specifying the values
$currentTime = Get-Date
Write-Host $currentTime

#date into a datetime object, but the format of the input string is assumed to be US, mmddyyyy. 

[datetime]$currentDate = "12/28/2023"
Write-Host $currentDate


#To calculate tax:
$netPrice= 100
$vatRate = 0.10
$vatAmount = $netPrice * $vatRate 
Write-Host $vatAmount

$grossPrice = $netPrice + $vatAmount
Write-Host $grossPrice

$text="The total Euro $grossPriceis the sum of the net value Euro $vatAmount with the VAT amount Euro $vatAmount at $vatRate % VAT rate"
Write-Host $text
#The total €$GROSS is the sum of the net value €$amount with the VAT amount €$VATAMOUNT at $VAT% VAT rate"

#string
$StringValue = "Sorna Murugan"
$StringValue.ToUpper()
$StringValue.ToLower()

#float

[float]$Floaty32 = 12.12
$Floaty32.GetType()

#double

[double]$Floaty64 = 12345.1234
$Floaty64.GetType()

#array
$colours=@("red","green","blue")
Write-Host $colours[0..4]


#Get-ChildItem:

foreach ($directory in Get-ChildItem)
{
  Write-Host $directory
}


# Create a hash table
$person = @{}

# Add key-value pairs to the hash table
$person["Name"] = "John"
$person["Age"] = 25
$person["City"] = "New York"

# Looping through the hash table
foreach ($key in $person.Keys) {
   
      Write-Host $key,$person[$key]
}

