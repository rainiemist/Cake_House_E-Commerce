<?php
session_start();
unset($_SESSION['account']);
$msg = '您已成功登出';
header('Location: ../index.php?msg='.$msg);
?>
