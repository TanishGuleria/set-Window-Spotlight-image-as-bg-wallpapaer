$user = $env:UserName
$variable = Get-ChildItem -Path "C:\Users\$user\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets" -r| sort -descending -property length | select -first 1 name, size

$v2 =$variable.Name

$path = "C:\Users\$user\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets\$v2"


Copy-Item "C:\Users\$user\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets\$v2" "C:\Users\$user\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets\copy1.bmp"


set-itemproperty -path "HKCU:Control Panel\Desktop" -name WallPaper -value "C:\Users\$user\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets\copy1.bmp"

RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True




