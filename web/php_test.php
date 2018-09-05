<!DOCTYPE html>
<html lang="zh-tw">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>PHP 語言測試</title>
    <style type=”text/css”>
    table {{border: 1px dotted #BBE9F7;}
    tr {border: 1px dashed #BBE9F7;}
    td {border: 1px dashed #BBE9F7;}
    </style>
</head>
<body>
<?php
echo "test";

?>
<br>
<br>
<br>
<div><?php echo "a + b =";?>
<?php
$a = "15";
$b = "35";
$c = $a + $b;

print_r($c);
?></div>
<br>
<br>
<br>
<?php 
$a = "100";
$b = "35";
$c = $a * $b;
$link = "Google";
echo "<a href='http://www.google.com.tw'>".$link."</a>";
?>
<br>
<br>
<br>
<?php 
$a = "100";
$b = "35";
if ($b>10){
    // 符合條件時執行
    $c = $a + $b;
} else{
    // 不符合條件時執行
    $c = $a - $b;
} echo "c=".$c;
?>
<br>
<br>
<br>
<?php
$fruit = "蓮霧";
switch ($fruit){
    case "楊桃";
    $count = 110;
    break;
    case "火龍果";
    $count = 150;
    break;
    case "水蜜桃";
    $count = 88;
    break;
    case "櫻桃";
    $count = 230;
    break;
    case "杏桃";
    $count = 180;
    break;
    case "甜桃";
    $count = 200;
    break;
    case "柿子";
    $count = 85;
    break;
    case "芭蕉";
    $count = 68;
    break;
    case "蓮霧";
    $count = 168;
    break;
    default:
    // 全部不符合時執行
    break;
} 
echo $fruit."價格="."台幣".$count."元";
?>
<br>
<br>
<br>
<?php
echo '<table width="100%" cellspacing="1" cellpadding="1">
<tbody><tr>';
   
for ($i=1; $i <=100; $i++){
    echo "<td>獅子跳火圈, 第".$i."圈</td>";
    if($i % 5 == 0){
        echo "</tr><tr>";
    }
} 
echo "</tbody></table>";
?>
</body>
</html>