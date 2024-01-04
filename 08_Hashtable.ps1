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

