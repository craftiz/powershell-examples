Param (
    [string]$text = "http://europen.cz"
)
$ie = new-object -com "InternetExplorer.Application"
$ie.navigate("http://qr.sinusgear.com")
$ie.Visible = $True
$element=$ie.Document.getElementById("qrCodeInput")
$element.value = $text

# Call JavaScript event to update URL
$ie.document.parentWindow.execScript("qrKeyUpHandler(null)","javascript")
