Param (
    [Parameter(Mandatory=$True)]
    [string]$filePath
)

$sha1 = new-Object System.Security.Cryptography.SHA1Managed
$sha1.ComputeHash((Get-Content -encoding byte $filePath)) | %{ Write-Host -NoNewline $_.ToString("x2") }
Write-Host
