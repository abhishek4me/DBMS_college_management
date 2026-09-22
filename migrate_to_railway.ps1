# Railway Migration PowerShell Script
param (
    [string]$Url = ""
)

Write-Host "=========================================================" -ForegroundColor Cyan
Write-Host "       Cavatta College Management - Railway Migration     " -ForegroundColor Cyan
Write-Host "=========================================================`n" -ForegroundColor Cyan

$phpPath = "C:\xampp\php\php.exe"
if (!(Test-Path $phpPath)) {
    $phpPath = "php"
}

if ($Url -ne "") {
    & $phpPath "migrate_to_railway.php" $Url
} else {
    & $phpPath "migrate_to_railway.php"
}
