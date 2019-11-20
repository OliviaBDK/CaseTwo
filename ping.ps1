ping 23.97.227.87 > ping.txt
$file = "C:\ping.txt"
$name = (Get-Item $file).Name
$uri = "https://storagelp5tqrvnqrtuc.blob.core.windows.net/logs/$($name)?st=2019-04-03T07%3A28%3A36Z&se=2019-04-03T07%3A28%3A36Z&sp=rwdl&sv=2018-03-28&sr=c&sig=Y3%2BBRkH5ivySba7qAFQ%2BnjF2HoVg0Lr4bjVPrKZh6mU%3D"
$headers = @{
    'x-ms-blob-type' = 'BlockBlob'
}
Invoke-RestMethod -Uri $uri -Method Put -Headers $headers -InFile $file 
