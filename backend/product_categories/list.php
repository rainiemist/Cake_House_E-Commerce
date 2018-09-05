<?php 
require_once('../function/login_check.php');
require('../../connection/connection.php'); ?>

<?php $limit = 3;
if (isset($_GET["page"])) { 
  $page  = $_GET["page"]; 
} else {
  $page=1; };
$start_from = ($page-1) * $limit; 
?>

<?php 
$query = $db->query("SELECT * FROM product_categories ORDER BY product_categories_id ASC LIMIT ".$start_from.",". $limit);
$data = $query->fetchAll(PDO::FETCH_ASSOC);
$total_rows = count($data);
?>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="../../css/theme.css" type="text/css">
  <link rel="stylesheet" href="../../css/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="../../lib/bootstrap-datepicker/css/bootstrap-datepicker3.css" type="text/css">
  <link rel="stylesheet" href="../../css/jquery-ui.min.css" type="text/css">
  </head>
  <style>
  #button {
	position: relative;
	right: -950px;
	bottom: -35px;
  }
  </style>

<body>
<?php require_once('../function/backend_nav.php'); ?>
<div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="">產品分類管理</h1>
        </div>
      </div>
      <div id="button">
      <a href='create.php' class="btn btn-outline-primary">新增內容</a>
      </div>
    </div>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <ul class="breadcrumb" style="margin-bottom:0px;margin-top:0px">
          <li class="breadcrumb-item">
            <a href="#">主控台</a>
          </li>
          <li class="breadcrumb-item active">產品分類管理</li>
          </ul>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12">
        <?php if($total_rows > 0){ ?>
          <table class="table">
            <thead>
              <tr>
                <th class="text-center">產品分類</th>
                <th width="15%">更新日期</th>
              <th width="30%">抄作</th>
              </tr>
            </thead>
            <tbody>
              <?php foreach($data as $product_categories){  ?>
              <tr>
                <td class="text-center"><?php echo $product_categories['category']; ?></td>
                <td> <?php echo $product_categories['updated_at']; ?> </td>
                <td>
                  <a href="../products/list.php?cat=<?php echo $product_categories['product_categories_id']; ?>" class="btn btn-outline-primary">產品管理</a>
                  <a href="edit.php?product_categories_id=<?php echo $product_categories['product_categories_id']; ?>" class="btn btn-outline-primary">編輯</a>
                  <a href="delete.php?product_categories_id=<?php echo $product_categories['product_categories_id']; ?>" class="btn btn-outline-primary" onclick="if(!confirm('是否確定刪除此筆資料?刪除後無法回復')){return false;};">刪除</a>
                </td>
              </tr>
        <?php } ?>
          </tbody>
        </table>
        <?php }else{ ?>
              <p>
                目前無資料，請新增一筆。
              </p>
              <?php } ?>
      </div>
    </div>
    <div class="container">
    <?php  if($total_rows > 0){
            $sth = $db->query("SELECT * FROM product_categories ORDER BY  product_categories_id DESC ");
            $data_count = count($sth ->fetchAll(PDO::FETCH_ASSOC));
            $total_pages = ceil($data_count / $limit);  // 無條件進位
           ?>
      <div class="row">
        <div class="col-md-12">
          <ul class="pagination">
          <?php   if($page > 1){ ?>
          <!-- 頁數超過一 上一頁可連結 -->
          <li class="page-item">
            <a class="page-link" href="list.php?page=<?php echo $page-1;?>">
                <span>«</span>
                <span class="sr-only">上一頁</span>
              </a>
            </li>
            <?php }else{ ?>
             <!-- 頁數沒超過 1 上一頁按鈕不可做連結 -->
            <li class="page-item">
            <a class="page-link" href="#">
                <span>«</span>
                <span class="sr-only">上一頁</span>
              </a>
            </li>
            <?php } ?>
            <?php for ($i=1; $i<=$total_pages; $i++) { ?>

<li class="page-item">
  <a class="page-link" href="list.php?page=<?php echo $i;?>"><?php echo $i;?></a>
</li>
<?php } ?>
<?php if($page < $total_pages){ ?>
            <li class="page-item">
              <a class="page-link" href="list.php?page=<?php echo $page+1;?>">
                <span>»</span>
                <span class="sr-only">下一頁</span>
              </a>
            </li>
            <?php }else{ ?>
              <li class="page-item">
              <a class="page-link" href="#">
                <span>»</span>
                <span class="sr-only">下一頁</span>
              </a>
            </li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <?php } ?>
    </div>
  </div>
  <!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script> -->
  <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script> -->
  <script src="../../lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <script src="../../js/bootstrap.min.js"></script>
  <script src="../../js/jquery-1.12.4.js"></script>
  <script src="../../js/jquery-ui-1.12.1/jquery-ui.min.js"></script>
  <script src="../../js/tinymce/tinymce.min.js"></script>
  <script src="../../js/tinymce/langs/zh_TW.js"></script>
</body>

</html>