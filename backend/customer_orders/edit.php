<?php require('../../connection/connection.php'); 


if(isset($_POST['EditForm']) && $_POST['EditForm'] == "UPDATE"){

  $sql= "UPDATE customer_orders SET 
  status=:status, 
  memo=:memo, 
  updated_at=:updated_at WHERE 
  customer_orders_id=:customer_orders_id";
  $sth = $db ->prepare($sql);
  $sth ->bindParam(":status", $_POST['status'], PDO::PARAM_STR);
  $sth ->bindParam(":memo", $_POST['memo'], PDO::PARAM_STR);
  $sth ->bindParam(":updated_at", $_POST['updated_at'], PDO::PARAM_STR);
  $sth ->bindParam(":customer_orders_id", $_POST['customer_orders_id'], PDO::PARAM_INT);
  $sth ->execute();

  header('Location: list.php');
}else{
  $query = $db->query("SELECT * FROM customer_orders WHERE customer_orders_id =".$_GET['customer_id']);
  $customer_orders = $query->fetch(PDO::FETCH_ASSOC);
  $query2 = $db->query("SELECT * FROM members WHERE members_id =".$customer_orders['members_id']);
  $member = $query2->fetch(PDO::FETCH_ASSOC);
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
          <h1 class="">訂單管理</h1>
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
            <a href="#">訂單管理</a>
          </li>
          <li class="breadcrumb-item active">編輯</li>
        </ul>
        <a href="list.php?status=0" class="btn btn-outline-primary m-2">回上一頁</a>
        </div>
        </div>
        <div class="row">
        <div class="col-md-12">
        <form class="mx-auto w-88" action="edit.php" method="post">
        <div class="form-group form-row">
              <label class="col-sm-2 col-form-label">訂單狀態</label>
              <div class="col-sm-10  text-left">
                <input type="radio" name="status" value="0" <?php if($customer_orders['status'] == 0) echo "checked" ?>> 新訂單
                <input type="radio" name="status" value="1" <?php if($customer_orders['status'] == 1) echo "checked" ?>> 已付款
                <input type="radio" name="status" value="2" <?php if($customer_orders['status'] == 2) echo "checked" ?>> 已出貨
                <input type="radio" name="status" value="4" <?php if($customer_orders['status'] == 3) echo "checked" ?>> 交易完成
                <input type="radio" name="status" value="99" <?php if($customer_orders['status'] == 99) echo "checked" ?>> 取消訂單
                </div>
          </div>
          <div class="form-group form-row">
              <label class="col-sm-2 col-form-label">訂單編號</label>
              <div class="col-sm-10 text-left">
                <?php echo $customer_orders['order_no']; ?>
              </div>
            </div>
           <div class="form-group form-row">
              <label class="col-sm-2 col-form-label">訂購日期</label>
              <div class="col-sm-10  text-left">
                <?php echo $customer_orders['order_date']; ?>
              </div>
            </div>
            <div class="form-group form-row">
              <label class="col-sm-2 col-form-label">訂單總金額</label>
              <div class="col-sm-10  text-left">
                <?php echo $customer_orders['total_price']; ?>
              </div>
            </div>
            <div class="form-group form-row">
              <label class="col-sm-2 col-form-label">運費</label>
              <div class="col-sm-10  text-left">
                <?php echo $customer_orders['shipping']; ?>
              </div>
            </div>
            <div class="form-group form-row">
              <label class="col-sm-2 col-form-label">訂購會員</label>
              <div class="col-sm-10  text-left">
                <?php echo $member['name']; ?>
              </div>
            </div>
            <div class="form-group form-row">
              <label class="col-sm-2 col-form-label">收件者</label>
              <div class="col-sm-10  text-left">
                <?php echo $customer_orders['name']; ?>
              </div>
            </div>
            <div class="form-group form-row">
              <label class="col-sm-2 col-form-label">聯絡電話</label>
              <div class="col-sm-10  text-left">
                <?php echo $customer_orders['phone']; ?>
              </div>
            </div>
            <div class="form-group form-row">
              <label class="col-sm-2 col-form-label">行動電話</label>
              <div class="col-sm-10  text-left">
                <?php echo $customer_orders['mobile']; ?>
              </div>
            </div>
            <div class="form-group form-row">
              <label class="col-sm-2 col-form-label">收件地址</label>
              <div class="col-sm-10  text-left">
              <?php echo $customer_orders['zipcode']; ?><?php echo $customer_orders['county']; ?><?php echo $customer_orders['district']; ?><?php echo $customer_orders['address']; ?>
              </div>
            </div>
            <div class="form-group form-row">
              <label class="col-sm-2 col-form-label">備註</label>
              <div class="col-sm-10">
                <textarea row="8" class="form-control" name="memo"><?php echo $customer_orders['memo']; ?></textarea>
              </div>
            </div>
          <div class="col-md-12 text-right">
              <input type="reset" class="btn btn-primary" value="取消並回上一頁" onclick='window.history.go(-1)'>
              <button type="submit" class="btn btn-primary">確認送出</button>
              <input type="hidden" name="customer_orders_id" value="<?php echo $customer_orders['customer_orders_id']; ?>">
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