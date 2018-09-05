<?php require('../../connection/connection.php'); 


if(isset($_POST['EditForm']) && $_POST['EditForm'] == "UPDATE"){
  $sql= "UPDATE  product_categories  SET
            category=:category,
            updated_at=:updated_at  
            WHERE  product_categories_id=:product_categories_id" ;
  $sth = $db ->prepare($sql);
  $sth ->bindParam(":category", $_POST['category'], PDO::PARAM_STR);
  $sth ->bindParam(":updated_at", $_POST['updated_at'], PDO::PARAM_STR);
  $sth ->bindParam(":product_categories_id", $_POST['product_categories_id'], PDO::PARAM_INT);
  $sth ->execute();

header('Location: list.php');
} else {
  $query = $db->query("SELECT * FROM product_categories WHERE product_categories_id =".$_GET['product_categories_id']);
  $product_categories = $query->fetch(PDO::FETCH_ASSOC);
}

?>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="../css/theme.css" type="text/css">
  <link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="../lib/bootstrap-datepicker/css/bootstrap-datepicker3.css" type="text/css">
  <link rel="stylesheet" href="../css/jquery-ui.min.css" type="text/css">
  </head>

<body>
  <?php require_once('../function/backend_nav.php'); ?>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="">產品分類管理</h1>
        </div>
      </div>
    </div>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-md-12 text-right">
        <ul class="breadcrumb" style="margin-bottom:0px;margin-top:0px">
          <li class="breadcrumb-item">
            <a href="#">主控台</a>
          </li>
          <li class="breadcrumb-item">
            <a href="#">產品分類管理</a>
          </li>
          <li class="breadcrumb-item active">編輯</li>
        </ul>
        <a href="list.php?product_categories_id=<?php echo $_GET['product_categories_id'];?>" class="btn btn-outline-primary m-2">回上一頁</a>
        </div>
        </div>
        <div class="row">
        <div class="col-md-12">
        <form class="mx-auto w-88" action="edit.php?product_categories_id=<?php echo $product_categories['product_categories_id'];?>" method="post">
        <div class="form-group form-row">
              <label class="col-sm-2 col-form-label">產品分類</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" name="category" value="<?php echo $product_categories['category']; ?>"> </div>
            </div>
          </div>
        
          <div class="col-md-12 text-right">
              <input type="reset" class="btn btn-primary" onclick="window.history.go(-1)" value="取消並回上一頁">
              <button type="submit" class="btn btn-primary">確認送出</button>
              <input type="hidden" name="product_categories_id" value="<?php echo $product_categories['product_categories_id']; ?>">
              <input type="hidden" name="updated_at" value="<?php echo date('Y-m-d H:i:s'); ?>">
              <input type="hidden" name="EditForm" value="UPDATE">
          </div>
        </form>
        </div>
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
  <script src="../../js/bootstrap.min.js"></script>
  <script src="../../js/jquery-1.12.4.js"></script>
  <script src="../../js/jquery-ui-1.12.1/jquery-ui.min.js"></script>


</body>

</html>