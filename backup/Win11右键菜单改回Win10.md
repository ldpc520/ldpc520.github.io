右键开始=>Windows终端（管理员）
切换到Win10复制粘贴回车：
```php
reg.exe add "HKCU\Software\Classes\CLSID{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
```
重启生效
切换回Win11复制粘贴回车：
```php
reg.exe delete "HKCU\Software\Classes\CLSID{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /va /f
```
重启生效
————————————————

                            版权声明：本文为博主原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接和本声明。
                        
原文链接：https://blog.csdn.net/weixin_45699306/article/details/122996536