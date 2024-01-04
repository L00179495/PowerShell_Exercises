#Error Handling
$a=2
try {
    # Code that might throw an error
    if($a -eq 1){
        throw "1"
    }
    elseif($a=2){
        throw "2"
    }
}
catch {
    # Code to handle the error
    if($_.Exception.Message -eq 1){
        "Error 1"
    }elseif($_.Exception.Message -eq 2){
        "Error 2"
    }
   else{
        $_.Exception.Message 
   }    
    }
finally {
    # Code that always executes, regardless of whether an error occurred or not
    Write-Host "Code is done!"
}


