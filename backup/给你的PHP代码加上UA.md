**如果不想你的PHP代理直播源让别人使用可以在代码前添加以下代码**
其中“iptv”就是你的UA。所以你的直播软件上的UA也得改成iptv
```php
  $user_agent = $_SERVER['HTTP_USER_AGENT'];
if ($user_agent != 'iptv') {
    header('location:' . '');
    exit;
}  
```
**如下面的凤凰卫视代码源码**
```php
<?php
  $user_agent = $_SERVER['HTTP_USER_AGENT'];
if ($user_agent != 'iptv') {
    header('location:' . '');
    exit;
} 
header("Content-Type: text/json; charset=UTF-8");
$id = isset($_GET['id'])?$_GET['id']:'fhzx';
$tv = array(
  'fhzx' => '4',  //資 訊 台
  'fhzw' => '5',  //中 文 台
  'fhhk' => '6',  //香 港 台
  );
$url = 'http://m.fengshows.com/api/v3/live?live_type=tv';
$response = get_data($url);
$channels = json_decode($response);
foreach ($channels as $channel) {
  if($channel->order==$tv[$id]){
    $channelId = $channel->_id;
    break; 
  }    
}
$info = get_url($channelId,'FHD');
if($info->status !== '0'){
  $info = get_url($channelId,'HD');
}
$liveUrl = $info->data->live_url;
header('Location:'.$liveUrl);

function get_url($cid, $qa){
  $url = "https://m.fengshows.com/api/v3/hub/live/auth-url?live_id={$cid}&live_qa={$qa}";
  $response = get_data($url);
  $data = json_decode($response);
  return $data;
}
function get_data($url){
$header=array(
  'fengshows-client: app(ios,5040718)',
  'User-Agent: Mozilla/5.0 (iPhone; CPU iPhone OS 15_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/98.0.4758.85 Mobile/15E148 Safari/604.1',
  'token:eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiIzMWUzZmVjMC1lY2IzLTExZWQtOWUxNS1mM2FiZjliZjhkOTYiLCJuYW1lIjoiIiwidmlwIjowLCJqdGkiOiJqQm5nMXBvZlQiLCJpYXQiOjE2ODM0NDg5ODksImV4cCI6MTY4NjA0MDk4OX0.0r8PuLetMiusCJul2tuPRzU8fnhxhqxBoycDV0_vKxI', 
);
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
$data = curl_exec($ch);
curl_close($ch);
return $data;
}
```