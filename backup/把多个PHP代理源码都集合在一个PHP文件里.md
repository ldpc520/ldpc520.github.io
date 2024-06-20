```php
<?php

error_reporting(0);

header('Content-Type: text/json;charset=UTF-8');



if (isset($_GET['vid'])) {

$vid=$_GET['vid'];




    if ($vid == 'haoqu') {
        //http://192.168.31.11:1008/proxy/zuhe.php?vid=haoqu&id=38072
        $id=$_REQUEST['id'];
        //获取网页内容
        $url = "http://tv.haoqu99.com/e/extend/tv.php?id=".$id;
        $info=file_get_contents($url);
        preg_match('/source src="(.*?)"/i',$info,$m);
        header("location:".$m[1]);

    } 



    if ($vid == 'db') {

        // http://127.0.0.1/test.php?vid=db&id=0
        /* ID=0 到 6 */
        $id = $_GET["id"];
        $txt_bb = "http://192.168.31.11:1008/tv.txt";
        if (file_get_contents($txt_bb)) {
        $txt_data = file($txt_bb);
        $txt_hh = chop($txt_data[$id]);
        $txt_ok = substr($txt_hh, strripos($txt_hh, ",") + 1);
        $txt_ok = str_replace("<br>", "", $txt_ok); // 添加删除 <br> 字符的代码
        header('Location: '. $txt_ok);
        }

    } 

} else {

header('HTTP/1.1 403 Forbidden');

exit();

}



?>
```
访问格式：http://127.0.0.1/test.php?vid=db&id=0