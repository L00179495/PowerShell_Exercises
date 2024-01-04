#Install PowerShell 7
$MYPARMS = @{
    UseMSI = $true
    Quite = $true
    AddExplorerContextMenu = $true
    EnablePSRemoting = $true
   }
   C:\PowerShell\Install-PowerShell.ps1 @MYPARMS