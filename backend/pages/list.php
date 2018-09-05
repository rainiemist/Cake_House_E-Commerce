<?php require('../../connection/connection.php'); ?>

<?php 
$query = $db->query("SELECT * FROM page ORDER BY created_at DESC");
$data = $query->fetchAll(PDO::FETCH_ASSOC); 
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
  bottom: -30px;
  }
  </style>

<body>
<?php require_once('../function/backend_nav.php'); ?>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="">主分頁管理</h1>
        </div>
      </div>
      <div id="button"><a href='create.php' class="btn btn-outline-primary">新增內容</a></div>
    </div>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <ul class="breadcrumb" style="margin-bottom:0px;margin-top:0px">
          <li class="breadcrumb-item">
            <a href="#">主控台</a>
          </li>
          <li class="breadcrumb-item active">主分頁管理</li>
        </ul>
        <table class="table">
          <thead>
            <tr>
              <th width="15%">新增日期</th>
              <th>頁面抬頭</th>
              <th>頁面內容</th>
              <th width="15%">更新日期</th>
              <th width="15%">操作</th>
            </tr>
          </thead>
          <tbody>
          <?php foreach ($data as $page){
          ?>
          
            <tr>
              <td> <?php echo $page['created_at']; ?> </td>
              <td> <?php echo $page['title']; ?> </td>
              <td> <?php echo mb_strimwidth ($page['content'],0,100,"..."); ?> </td>
              <td> <?php echo $page['updated_at']; ?> </td>
             <td>
                <a href='edit.php?id=<?php echo $page['id'];?>' class="btn btn-outline-primary">編輯</a>
             
              </td>
            </tr>
        <?php } ?>
          </tbody>
        </table>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <ul class="pagination">
            <li class="page-item">
              <a class="page-link" href="#">
                <span>«</span>
                <span class="sr-only">上一頁</span>
              </a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">1</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">2</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">3</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">4</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">
                <span>»</span>
                <span class="sr-only">下一頁</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
   <!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script> -->
  <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script> -->
  <script src="../../lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <script src="../../js/bootstrap.min.js"></script>
  <script src="../../js/jquery-1.12.4.js"></script>
  <script src="../../js/jquery-ui-1.12.1/jquery-ui.min.js"></script>
</body>

</html>