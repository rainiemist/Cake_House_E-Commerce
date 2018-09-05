<?php require('../../connection/connection.php'); 

$query = $db->query("SELECT * FROM products WHERE products_id=".$_GET['products_id']);
$data = $query->fetch(PDO::FETCH_ASSOC); 

if(isset($_POST['EditForm']) && $_POST['EditForm'] == "UPDATE"){

if(isset($_FILES['picture']['name']) && $_FILES['picture']['name'] != null ){
  unlink ("../../uploads/products/".$_POST['old_picture']);
$filename = $_FILES['picture']['name'];
$file_path = "../../uploads/products/".$file_path.$_FILES['picture']['name'];
move_uploaded_file($_FILES['picture']['tmp_name'], $file_path);
}else{
$filename = $_POST['old_picture'];
}

  $sql= "UPDATE  products  SET
            picture=:picture,
            name=:name,
            price=:price,
            description=:description,
            updated_at=:updated_at  WHERE  products_id=:products_id";
  $sth = $db ->prepare($sql);
  $sth ->bindParam(":picture", $filename, PDO::PARAM_STR);
  $sth ->bindParam("name", $_POST['name'], PDO::PARAM_STR);
  $sth ->bindParam(":price", $_POST['price'], PDO::PARAM_STR);
  $sth ->bindParam(":description", $_POST['description'], PDO::PARAM_STR);
  $sth ->bindParam(":updated_at", $_POST['updated_at'], PDO::PARAM_STR);
  $sth ->bindParam(":products_id", $_POST['products_id'], PDO::PARAM_INT);
   // $sth ->bindParam(":product_categories_id", $_POST['product_categories_id'], PDO::PARAM_INT);
  $sth ->execute();

header('Location: list.php?cat='.$_POST['product_categories_id']);
} 
else {
    $query = $db->query("SELECT * FROM products WHERE products_id=".$_GET['products_id']);
    $products = $query->fetch(PDO::FETCH_ASSOC);
  }  
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

<body>
  <?php require_once('../function/backend_nav.php'); ?>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="">產品管理</h1>
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
            <a href="#">產品管理</a>
          </li>
          <li class="breadcrumb-item active">編輯</li>
        </ul>
        <a href="list.php?product_categories_id=<?php echo $_GET['product_categories_id'];?>" class="btn btn-outline-primary m-2">回上一頁</a>
        </div>
        </div>
        <div class="row">
        <div class="col-md-12">
        <form class="mx-auto w-88" action="edit.php?products_id=<?php echo $_GET['product_categories_id'];?>&products_id=<?php echo $_GET['products_id']?>" enctype="multipart/form-data" method="post">
        <div class="form-group form-row">
            <label class="col-sm-2 col-form-label">產品分類</label>
            <div class="col-sm-10">
              <?php echo $products['product_categories_id']; ?> 
              </div>
          </div>
      
        <div class="form-group form-row">
            <label class="col-sm-2 col-form-labelt">產品圖片</label>
            <div class="col-sm-10 text-left">
              <img src="../../uploads/products/<?php echo $products['picture']?>" alt="" width="400"> <br>
              <input type="file" id="picture" name="picture" value="<?php echo $products['picture'] ?>"> 
              <input type="hidden"  name="old_picture" value="<?php echo $products['picture'] ?>">
            </div>
          </div>
          <div class="form-group form-row">
            <label class="col-sm-2 col-form-label">產品名稱</label>
            <div class="col-sm-10 text-left">
              <input type="text" class="form-control" placeholder="輸入產品名稱" name="name" value="<?php echo $products['name'] ?>"> </div>
          </div>
          <div class="form-group form-row">
            <label class="col-sm-2 col-form-label">產品價格</label>
            <div class="col-sm-10 text-left">
              <input type="text" class="form-control" placeholder="輸入產品價格" name="price" value="<?php echo $products['price'] ?>"> </div>
          </div>
          <div class="form-group form-row">
            <label class="col-sm-2 col-form-label">產品說明</label>
            <div class="col-sm-10 text-left">
              <textarea type="text" class="form-control" name="description" placeholder="輸入內容 至少300個字" cols="70" maxlength="800" rows="8"><<?php echo  $products['description']; ?></textarea>
            </div>
          </div>
          <div class="col-md-12 text-right">
          <input type="reset" class="btn btn-primary" onclick="window.history.go(-1)" value="取消並回上一頁">
          <button type="submit" class="btn btn-primary text-right">確定送出</button>
          <input type="hidden" name="product_categories_id" value="<?php echo $_GET['product_categories_id']; ?>">
          <input type="hidden" name="products_id" value="<?php echo $_GET['products_id']; ?>">
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
  <script src="../../lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <script src="../../js/bootstrap.min.js"></script>
  <script src="../../js/jquery-1.12.4.js"></script>
  <script src="../../js/jquery-ui-1.12.1/jquery-ui.min.js"></script>
  <script src="../../js/tinymce/tinymce.min.js"></script>
  <script src="../../js/tinymce/langs/zh_TW.js"></script>
  
  <script>
  $(function() {

    $("#published_date").datepicker({
            format: 'd MM, y',
            clearBtn: true,
            autoClose: true
        });


  });

</script>

<script>
//tinymce

tinymce.init({  
  selector: 'textarea',
  language:'zh_TW',
  height: 500,
  theme: 'modern',
  plugins: 'print preview fullpage powerpaste searchreplace autolink directionality advcode visualblocks visualchars fullscreen image link media template codesample table charmap hr pagebreak nonbreaking anchor toc insertdatetime advlist lists textcolor wordcount tinymcespellchecker a11ychecker imagetools mediaembed  linkchecker contextmenu colorpicker textpattern help',
  toolbar1: 'formatselect | bold italic strikethrough forecolor backcolor | link | alignleft aligncenter alignright alignjustify  | numlist bullist outdent indent  | removeformat',
  image_advtab: true,
  templates: [
    { title: 'Test template 1', content: 'Test 1' },
    { title: 'Test template 2', content: 'Test 2' }
  ],
  content_css: [
    '//fonts.googleapis.com/css?family=Lato:300,300i,400,400i',
    '//www.tinymce.com/css/codepen.min.css'
  ]
 });

</script>
</body>

</html>