$sha1 = new-Object System.Security.Cryptography.SHA1Managed
$sha1.ComputeHash((Get-Content -encoding byte .\README.md)) | %{ Write-Host -NoNewline $_.ToString("x2") }
Write-Host
