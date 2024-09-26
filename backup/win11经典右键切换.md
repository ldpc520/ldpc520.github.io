win11右键切换成经典的右键菜单,把下载代码txt文档保存尾缀为.bat的文件即可

**恢复WIN10经典右键**
```PHP
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
taskkill /f /im explorer.exe & start explorer.exe
```

**恢复WIN11原版右键**
```php
reg delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /f
taskkill /f /im explorer.exe & start explorer.exe
```
下载地址：[https://ld0766.lanzouj.com/iZtT92avlh7e](url)