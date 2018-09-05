<?php
require('../../connection/connection.php'); 
$sql = "DELETE FROM product_categories WHERE product_categories_id=".$_GET['cat'];
$sth = $db->prepare($sql);
$sth->execute();
header('Location: list.php?cat='.$_GET['product_categories_id']);
 ?>
