ping 23.97.227.87 > ping.txt
$file = "C:\ping.txt"
$name = (Get-Item $file).Name
$uri = "https://storagelp5tqrvnqrtuc.blob.core.windows.net/logs/$($name)?sv=2015-04-05&sr=c&se=2050-01-01T00%3A00%3A00.0000000Z&sp=c&sig=7oKfr62XRi%2B2%2Bg%2FbGUt6bLw3YYM4e%2BztoeHdJdpPudg%3D"
$headers = @{
    'x-ms-blob-type' = 'BlockBlob'
}
Invoke-RestMethod -Uri $uri -Method Put -Headers $headers -InFile $file 
