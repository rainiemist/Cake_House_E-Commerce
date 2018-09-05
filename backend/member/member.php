<?php require('../connection/connection.php'); 

if(isset($_POST['AddForm']) && $_POST['AddForm'] == "INSERT"){
  $sql= "INSERT INTO members
            (published_date,
            title,
            content,
            created_at) VALUES (
            :published_date,
            :title,
            :content,
            :created_at)";
  $sth = $db ->prepare($sql);
  $sth ->bindParam(":published_date", $_POST['published_date'], PDO::PARAM_STR);
  $sth ->bindParam("title", $_POST['title'], PDO::PARAM_STR);
  $sth ->bindParam(":content", $_POST['content'], PDO::PARAM_STR);
  $sth ->bindParam(":created_at", $_POST['created_at'], PDO::PARAM_STR);
  $sth ->execute();

header('Location: list.php');
}

?>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://v40.pingendo.com/assets/4.0.0/default/theme.css" type="text/css"> </head>

<body>
  <nav class="navbar navbar-expand-md bg-primary navbar-dark">
    <div class="container">
      <a class="navbar-brand" href="#">
        <i class="fa fa-birthday-cake fa-2x"></i>
        <b>&nbsp; 冰河水源 &nbsp;RAINIE MIST @ CAKE HOUSE</b>
      </a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar2SupportedContent">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse text-center justify-content-end" id="navbar2SupportedContent">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="#">最新消息管理
              <i></i>
              <br> </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <i></i> 頁面管理
              <br> </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">產品管理</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">訂單管理</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">會員管理</a>
          </li>
        </ul>
        <a class="btn navbar-btn ml-2 text-white btn-secondary">
          <i class="fa d-inline fa-lg fa-user-circle-o"></i>&nbsp;登出
          <br> </a>
      </div>
    </div>
  </nav>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="">會員資料管理</h1>
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
            <a href="#">會員資料管理</a>
          </li>
          <li class="breadcrumb-item active">會員加入 新增</li>
        </ul>
        <a href="#" class="btn btn-outline-primary m-2">回上一頁</a>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12">
        <form class="mx-auto w-88" action="create.php" method="post">
          <div class="form-group form-row">
            <label class="col-sm-2 col-form-labelt">會員 ID</label>
            <div class="col-sm-10 text-left">
              <input type="text" class="form-control" placeholder="輸入英文 ID 名稱 , 限制12字以內" maxlength="12" name="member_id"> </div>
          </div>
          <div class="form-group form-row">
            <label class="col-sm-2 col-form-label">會員暱稱</label>
            <div class="col-sm-10 text-left">
              <input type="text" class="form-control" placeholder="輸入會員暱稱 中文 或 英文" name="member_nickname"> </div>
          </div>
          <div class="form-group form-row">
            <label class="col-sm-2 col-form-label">Email</label>
            <div class="col-sm-10 text-left">
              <input type="text" class="form-control" placeholder="輸入 EMAIL" name="email"> </div>
          </div>
          <div class="form-group form-row">
            <label class="col-sm-2 col-form-label">Website</label>
            <div class="col-sm-10 text-left">
              <input type="text" class="form-control" placeholder="輸入 網站 URL 網址" name="site_url"> </div>
          </div>
          <div class="form-group form-row">
            <label class="col-sm-2 col-form-label">會員自我介紹</label>
            <div class="col-sm-10 text-left">
              <textarea type="text" class="form-control" name="content" placeholder="自我介紹內容" cols="70" rows="8"></textarea>
            </div>
          </div>
          <div class="col-md-12 text-right">
            <input type="reset" value="取消並回上一頁" class="btn btn-primary">
            <button type="submit" class="btn btn-primary text-right">確定送出</button>
            <input type="hidden" value="<?php echo date('Y-m-d H:i:s'); ?>" name="created_at">
            <input type="hidden" name="AddForm" value="INSERT"> </div>
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
              <span class="sr-only">Previous</span>
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
              <span class="sr-only">Next</span>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <pingendo onclick="window.open('https://pingendo.com/', '_blank')" style="cursor:pointer;position: fixed;bottom: 10px;right:10px;padding:4px;background-color: #00b0eb;border-radius: 8px; width:250px;display:flex;flex-direction:row;align-items:center;justify-content:center;font-size:14px;color:white">Made with Pingendo Free&nbsp;&nbsp;
    <img src="https://pingendo.com/site-assets/Pingendo_logo_big.png" class="d-block" alt="Pingendo logo" height="16">
  </pingendo>
</body>

</html>