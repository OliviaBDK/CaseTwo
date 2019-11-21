ping 104.47.150.87 > ping.txt
$file = "C:\Users\Student\ping.txt"
$name = (Get-Item $file).Name
$uri = "https://storage6mnulsbypuzpu.blob.core.windows.net/logs/$($name)?sv=2015-04-05&sr=c&se=2050-01-01T00%3A00%3A00.0000000Z&sp=c&sig=T6CrwfdX7ONlKyCfUepn3b5zo0K2RJxEJz8%2BRanr3Ms%3D"
$headers = @{
    'x-ms-blob-type' = 'BlockBlob'
}
Invoke-RestMethod -Uri $uri -Method Put -Headers $headers -InFile $file 
