Param (
    [Parameter(Mandatory=$True)]
    [string]$filePath
)

Set-AuthenticodeSignature $filePath @(Get-ChildItem cert:\CurrentUser\My -codesigning)[0]
