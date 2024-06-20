参考文章：https://rmbz.net/archives/vmware-esxi-passthrough

**1.进入ESXI6.7 web管理后台。开启SSH**

![esxi_1](https://github.com/ldpc520/ldpc520.github.io/assets/62380221/0c696313-3aa7-484a-ac7e-bc38c24d98ed)

**2.点击存储，选择默认存储(ESXI安装硬盘)。复制位置地址备用；**

![esxi_2](https://github.com/ldpc520/ldpc520.github.io/assets/62380221/ae5afa67-50e1-4450-9954-64f5e1d2e293)
 
**3.打开SSH工具，登录SSH。登录以后执行以下命令。**

执行命令1：
```linux
cd  /vmfs/volumes/5fb14c74-5da1723a-c6a0-00e15a680bd8
```
![esxi_3](https://github.com/ldpc520/ldpc520.github.io/assets/62380221/f3c1506e-db23-4a0b-b635-68b244807ff9)

/vmfs/volumes/5fb14c74-5da1723a-c6a0-00e15a680bd8 （是第二步复制备用的路径）

 
执行命令2： 
```linux
mkdir DMS.store 
```
(这个命令是在默认存储空间根目录下创建一个用来存放直通镜像文件.vmdk的文件夹)

**4.复制准备直通的硬盘标识符**
 t10.ATA_____ST500LT0122D9WS142___________________________________S0V2PJJG

![esxi_4](https://github.com/ldpc520/ldpc520.github.io/assets/62380221/32f0cc13-830d-45b4-aa20-011fec5107d4)

执行下面的命令：
```linux
 vmkfstools -z /vmfs/devices/disks/t10.ATA_____ST500LT0122D9WS142___________________________________S0V2PJJG /vmfs/volumes/5fb14c74-5da1723a-c6a0-00e15a680bd8/DMS.store/500g.vmdk
```

**5.如果都正确执行的话，是不会弹出错误以及其他提示的。然后回到虚拟机设置，添加硬盘》添加现有硬盘》选择之前创建的直通磁盘vmdk文件。**

![esxi_5](https://github.com/ldpc520/ldpc520.github.io/assets/62380221/677b65a1-03b0-461d-b058-6b9838b4d321)

**6.设置相关参数，控制器选择STAT控制器，点击保存，**

![esxi_6](https://github.com/ldpc520/ldpc520.github.io/assets/62380221/f0ed3719-c6ce-49e6-ac1a-e3b5b9d9995a)

**7.启动虚拟机，至此。直通硬盘给群晖虚拟机完成**