<?php
require('../connection/connection.php');

$query = $db->query('SELECT * FROM news');
// $query = $db->query("SELECT Picture FROM contact WHERE `Name`='".$_POST['Name']."'");
$data = $query->fetchAll(PDO::FETCH_ASSOC);
print_r($data);
?>
