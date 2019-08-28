$rootfolder="D:\home\site\wwwroot"
$items=Get-ChildItem -Path $rootfolder
$a = $items | Where Name -Match "main.*.bundle.js"
$path = $rootfolder+"\"+$a.Name
(Get-Content -Path $path).Replace("[api_url]","test") | Set-Content $path
