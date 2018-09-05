<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="../../lib/bootstrap-datepicker/css/bootstrap-datepicker3.css" type="text/css">
  <link rel="stylesheet" href="../../css/jquery-ui.min.css" type="text/css">
  <link rel="stylesheet" href="../../css/bootstrap.css" type="text/css">
  <link rel="stylesheet" href="../../css/theme.css" type="text/css">
  <link rel="stylesheet" href="../../css/bootstrap.min.css" type="text/css">
</head>
<body>
<nav class="navbar navbar-expand-md bg-primary navbar-light">
    <div class="container">
      <a class="navbar-brand navbar-light navbar-text" href="#">
        <i class="fa fa-birthday-cake fa-2x"></i>
        <b>&nbsp; 冰河水源 &nbsp;RAINIE MIST @ CAKE HOUSE</b>
      </a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar2SupportedContent">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse text-center justify-content-end" id="navbar2SupportedContent">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="../news/list.php">最新消息管理
              <i></i>
              <br> </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../pages/list.php">
              <i></i> 頁面管理
              <br> </a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <b>產品管理</b>
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="../product_categories/list.php">產品分類管理</a>
            </div>
          </li>
          <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
              <b>訂單管理</b>
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="../customer_orders/list.php?status=0">新訂單</a>
              
                  <a class="dropdown-item" href="../customer_orders/list.php?status=1">已付款</a>
               
                  <a class="dropdown-item" href="../customer_orders/list.php?status=2">已出貨</a>
                
                  <a class="dropdown-item" href="../customer_orders/list.php?status=3">已送達(交易完成)</a>
                
                  <a class="dropdown-item" href="../customer_orders/list.php?status=99">取消訂單</a>
                </div>
              </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <b>會員管理</b>
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="#">會員管理</a>
            </div>
          </li>
        </ul>
        <a class="btn navbar-btn ml-2 text-white btn-primary" a href="../logout.php">
          <i class="fa d-inline fa-lg fa-user-circle-o"></i>&nbsp;登出
          <br> </a>
      </div>
    </div>
  </nav>
  <!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script> -->
  <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script> -->
  <script src="../../lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <script src="../../js/bootstrap.min.js"></script>
  <script src="../../js/jquery-1.12.4.js"></script>
  <script src="../../js/jquery-ui-1.12.1/jquery-ui.min.js"></script>
  <script src="../../js/popper.min.js"></script>
  </body>
  </html>