<!DOCTYPE html>
<html lang="zh-tw">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style type=”text/css”>
    table {{border: 1px dotted #BBE9F7;}
    tr {border: 1px dashed #BBE9F7;}
    td {border: 1px dashed #BBE9F7;}
    </style>
</head>
<body>
<table width="100%" border="1" cellspacing="1" cellpadding="1">
  <tbody>
    <tr>
      <!--  <?php for ($i=1; $i <=100; $i++){ ?>
       <td>獅子跳火圈, 第<?php echo $i; ?>圈</td>
      <?php 
      if($i % 5 == 0){
        echo "</tr><tr>";
    }
} //end for ?> --> 

<?php for ($i=1; $i <=9; $i++){ 
      for ($j=1; $j <=9; $j++){
          ?>
 <td> <?Php echo $i."*".$j."=".$i*$j; ?></td>
      <?php } // end for j?>
      </tr>

<?php } //end for i?>

      
  </tbody>
</table>
</body>
</html>