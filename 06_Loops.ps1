# for loop:
for ($i = 1; $i -le 5; $i++) {
    # Code to be executed in each iteration
    Write-Host "Iteration number: $i"
}

#foreach loop:
$Counties = "Dublin", "Sligo", "Donegal"

#foreach loop to iterate over other types of collections such as arrays, hashtables

foreach ($county in $Counties) {
    # Code to be executed for each item
    Write-Host "I like $county!"
}

#while loop
$count = 0

while ($count -lt 5) {
    # Code to be executed in each iteration
    Write-Host "Count: $count"
    $count++
}

#do until
$count = 0
# while loop that executes a block of code repeatedly until a specified condition becomes true. 
do {
    # Code to be executed in each iteration
    Write-Host "Count: $count"
    $count++
} until ($count -eq 7)

