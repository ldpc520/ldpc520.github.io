准备工作：

温馨提示：改动前建议先抓包，电脑连接光猫的IPTV口打开这个网址就能抓到广东移动的频道列表：http://183.235.16.92:8082/epg/api/custom/getAllChannel2.json
1、广东移动光猫超级帐号：CMCCAdmin 密码：aDm8H%MdA
2、一个Padavan老毛子的路由器，Lan口越多越好，方便一些，不低于两个Lan口
实操步骤：
**一、以超级管理员帐号登陆光猫进行如下图设置，数值不要照搬，根据你的光猫实际数值来填**
![光猫1](https://github.com/ldpc520/ldpc520.github.io/assets/62380221/67975189-3933-428e-9277-5334f59944dd)
![光猫2](https://github.com/ldpc520/ldpc520.github.io/assets/62380221/00b3e6cf-916a-47db-9121-5edf8896180a)
![光猫3](https://github.com/ldpc520/ldpc520.github.io/assets/62380221/829c672d-3c62-4155-9b94-5112f5fcbbeb)
![光猫4](https://github.com/ldpc520/ldpc520.github.io/assets/62380221/73c5975e-5062-4fb5-b40f-2f442671c627)

**二、用一根网连接光猫的Lan1口和路由器的WAN口。登陆后进行如下图设置**

下图按正常设置上你的宽带帐号和密码
![外网1](https://github.com/ldpc520/ldpc520.github.io/assets/62380221/b35c02b8-bf2b-42d0-9bf8-02ce6ca5ee8c)

下图设置你的盒子验证信息和填写Vlan的值
![外网2](https://github.com/ldpc520/ldpc520.github.io/assets/62380221/292c46e9-ae05-4fa8-8cba-f3706a992f79)

设置单播使用的端口，点击旁边的 Web Status就可以打开界面，能打开就是单播设置成功了。

![内网](https://github.com/ldpc520/ldpc520.github.io/assets/62380221/8eb2c616-4b93-491e-89c7-f36c4bc6df6d)

这里选择Lan口1就是可以使用网线从Lan1口来连接移动给的盒子来观看，不使用就选择否，如上面的一个图设置。

![外网3](https://github.com/ldpc520/ldpc520.github.io/assets/62380221/f22ac531-a55e-48aa-ba70-121a8267ac32)

这样设置就好了。单播的地址就是:珠江频道,http://192.168.11.1:10086/rtp/239.10.0.63:1025

可以在内网任意设备上播放了。

至于外网观看，我是用本地宝塔反代的。因为我有ipv6地址，应该是移动的都有ipv6地址


如果没有宝塔的，可以用FRP内网穿透来直接进行内网穿透就可以外网观看了
