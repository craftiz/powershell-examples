$env:path += ";c:\Python27;c:\Python27\Scripts;C:\Ruby193\bin"
$env:SVN_EDITOR="vim"
$env:node_path="$home\AppData\Roaming\npm\node_modules"

# Color prompt
function prompt {
    Write-Host ("PS " + $(get-location) +">") -nonewline -foregroundcolor Green
    return " "
}
