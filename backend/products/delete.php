<?php
require('../../connection/connection.php'); 
$sql = "DELETE FROM products WHERE products_id=".$_GET['products_id'];
$sth = $db->prepare($sql);
$sth->execute();
header('Location: list.php?cat='.$_GET['product_categories_id']);
 ?>
