<!-- <?php 
$fruits = array ("apple"=>"蘋果", "banana"=>"香蕉", "pineapple"=>"鳳梨", "peach"=>"水蜜桃", "orange"=>"柳丁", "bell fruit"=>"蓮霧", 
"pomelo"=>"柚子", "star fruit"=>"楊桃", "dragon fruit"=>"火龍果");
echo $fruits["apple"]."<br>";
print_r($fruits);
?> -->
<br>
<br>
<br>
<?php 
$fruits1 = array ("蘋果", "香蕉", "鳳梨", "水蜜桃", "柳丁", "蓮霧", "柚子", "楊桃", "火龍果");
$fruits = array ("apple"=>"蘋果", "banana"=>"香蕉", "pineapple"=>"鳳梨", "peach"=>"水蜜桃", "orange"=>"柳丁", "bellfruit"=>"蓮霧", 
"pomelo"=>"柚子", "starfruit"=>"楊桃", "dragonfruit"=>"火龍果");
for ($i = 0; $i < count($fruits1); $i++){
    echo $fruits1[$i]."<br>";
}
echo "--------------"."<br><br>";
foreach ($fruits1 as $one){
    echo $one."<br>";
}
?>