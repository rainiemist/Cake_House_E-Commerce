<?php 
require_once('../function/login_check.php');
require('../../connection/connection.php'); ?>

<?php $limit = 5;
if (isset($_GET["page"])) { 
  $page  = $_GET["page"]; 
} else {
  $page=1; };
$start_from = ($page-1) * $limit; 

$query = $db->query("SELECT * FROM customer_orders WHERE status = ".$_GET['status']." ORDER BY order_date ASC LIMIT ".$start_from.",".$limit);
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
	right: -980px;
  bottom: -30px;
  }
  </style>

<body>
<?php require_once('../function/backend_nav.php'); ?>
<div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
        <h1 class="">訂單管理-
          <?php switch($_GET['status']){
                      case 0:
                        echo "新訂單";
                        break;
                      case 1:
                        echo "已付款訂單";
                        break;
                      case 2:
                        echo "已出貨訂單";
                        break;
                      case 3:
                        echo "交易完成訂單";
                        break;
                      case 99:
                        echo "已取消訂單";
                        break;
                  }
            ?></h1>
        </div>
      </div>
      <!-- <div id="button">
      <a href='create.php' class="btn btn-outline-primary">新增內容</a>
      </div> -->
    </div>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-sm-12">
        <ul class="breadcrumb" style="margin-bottom:0px;margin-top:0px">
          <li class="breadcrumb-item">
            <a href="#">主控台</a>
          </li>
          <li class="breadcrumb-item active">訂單管理</li>
          </ul>
        </div>
      </div>
      <div class="row">
      <div class="col-md-12">
        <?php if($total_rows > 0){ ?>
          <table class="table">
            <thead>
              <tr>
                <th width="5%">訂單編號</th>
                <th width="9%">訂購日期</th>
                <th width="9%">聯絡方式</th>
                <th width="14%">送貨地址</th>
                <th width="6%">總計</th>
                <th width="6%">運費</th>
                <th width="9%">備註</th>
                <th width="9%">訂單狀態</th>
              <th width="15%">操作</th>
              </tr>
            </thead>
            <tbody>
              <?php foreach($data as $customer){  ?>
              <tr>
                <td>No. <?php echo $customer['order_no']; ?></td>
                <td> <?php echo $customer['order_date']; ?> </td>
                <td> 
                    <?php echo $customer['name']; ?> 
                     H:<?php echo $customer['phone']; ?> <br>
                     M:<?php echo $customer['mobile']; ?>
                </td>
                <td>
                <?php echo $customer['zipcode'] . $customer['county'] . $customer['district'] . $customer['address'];?>
                 </td>
                 <td> <?php echo $customer['total_price']; ?> </td>
                <td> <?php echo $customer['shipping']; ?> </td>
                <td> <?php echo $customer['memo']; ?> </td>
                <td> <?php echo $customer['status']; ?>:
                <?php if ($customer['status'] ==0) { ?>
                                            <span class="label label-danger">待付款</span>
                                            <?php } if ($customer['status'] ==1) { ?>
                                            <span class="label label-info">已付款</span>
                                            <?php } if ($customer['status'] ==2) { ?>
                                            <span class="label label-warning">出貨中</span>
                                            <?php } if ($customer['status'] ==3) { ?>
                                            <span class="label label-success">已送達(交易完成)</span>
                                            <?php } else if ($customer['status'] ==99) { ?>
                                            <span class="label label-danger">訂單取消</span>
                                            <?php } ?>   </td>
                <td>
                <a href="../order_details/list.php?customer_id=<?php echo $customer['customer_orders_id']?>&status=<?php echo $_GET['status'];?>" class="btn btn-outline-primary">訂單明細</a>
                  <a href="edit.php?customer_id=<?php echo $customer['customer_orders_id']?>&status=<?php echo $customer['status'];?>" class="btn btn-outline-primary">編輯</a>
                  <!-- <a href="delete.php?customer_orders_id=<?php echo $customer['customer_orders_id']; ?>" class="btn btn-outline-primary" onclick="if(!confirm('是否確定刪除此筆資料?刪除後無法回復')){return false;};">刪除</a> -->
                </td>
              </tr>
        <?php } ?>
          </tbody>
        </table>
        <?php }else{ ?>
              <p>
               目前無訂單
              </p>
              <?php } ?>
      </div>
    </div>
    <div class="container">
    <?php  if($total_rows > 0){
            $sth = $db->query("SELECT * FROM customer_orders ORDER BY customer_orders_id DESC ");
            $data_count = count($sth ->fetchAll(PDO::FETCH_ASSOC));
            $total_pages = ceil($data_count / $limit);  // 無條件進位
           ?>
      <div class="row">
        <div class="col-md-12">
          <ul class="pagination">
          <?php   if($page > 1){ ?>
          <!-- 頁數超過一 上一頁可連結 -->
            <li class="page-item">
            <a class="page-link" href="list.php?status=<?php echo $customer['status']; ?>&page=<?php echo $page-1;?>">
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
  <a class="page-link" href="list.php?status=<?php echo $customer['status']; ?>&page=<?php echo $i;?>"><?php echo $i;?></a>
</li>
<?php } ?>
           
            <?php if($page < $total_pages){ ?>
            <li class="page-item">
              <a class="page-link" href="list.php?status=<?php echo $customer['status']; ?>&page=<?php echo $page+1;?>">
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
  <script src="../../js/popper.min.js"></script>
</body>

</html>