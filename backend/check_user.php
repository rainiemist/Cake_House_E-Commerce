
<?php
session_start (); 
require('../connection/connection.php'); ?>

<?php 
$sql= "SELECT * FROM users WHERE 
account=:account AND password=:password";
$sth = $db ->prepare ($sql);
$sth -> bindParam(":account", $_POST['username'], PDO::PARAM_STR);
$sth -> bindParam(":password", $_POST['pass'], PDO::PARAM_STR);
$sth ->execute();
$user = $sth->fetch(PDO::FETCH_ASSOC);
print_r($user);
$_SESSION['account'] = $user['account'];
if (isset ($user) && $user != null ) {
    header ('Location: news/list.php');
}else {
    header ('Location: Login.php?Error=True');
}


?>