$url = "http://foursquare-api-java.googlecode.com/svn/trunk/pom.xml"
[xml]$data =(New-Object System.Net.WebClient).DownloadString($url)
Write-Host "Version: "$data.project.version
Write-Host "License: "$data.project.licenses.license.name

