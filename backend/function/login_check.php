<?php
session_start();
if(!isset($_SESSION['account'])){
  header('Location: ../Login.php');
}
?>
