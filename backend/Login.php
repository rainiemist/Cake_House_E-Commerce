<!DOCTYPE html>
<html lang="zh-tw">
<head>
	<title>CAKE HOUSE 後台管理系統</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="../images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../lib/animate/css/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../lib/css-hamburgers/css/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../lib/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../lib/select2/css/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../lib/daterangepicker/css/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../css/util.css">
	<link rel="stylesheet" type="text/css" href="../css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('../backend/images/cake_bg1-1024x640.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					管理者登入 ADMIN LOGIN
				</span>
				<form class="login100-form validate-form p-b-33 p-t-5" action="check_user.php" method="post">

					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<input class="input100" type="text" name="username" placeholder="輸入用戶名稱 / User Name">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" name="pass" placeholder="輸入密碼 / Password">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>
					<?php if(isset($_GET['Error']) && $_GET['Error'] != null){ ?>
					<div class="wrap-input100 text-center" style="color:#f00;">
					帳號密碼<strong>錯誤</strong>, 請重新登入 。 </span><br>
					User Name and/or Password are <strong>WRONG</strong>, <br> Please Re-Login .
				</div>
					<?php } ?>

					<?php if(isset($_GET['msg']) && $_GET['msg'] != null){ ?>
					<div class="wrap-input100 text-center" style="color:#333;">
					<?php echo $_GET['msg']; ?>
					</div>
					<?php } ?>

					<div class="container-login100-form-btn m-t-32">
						<button class="login100-form-btn">
							登入 <br> 
							LOGIN
						</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="../js/jquery-1.12.4.js"></script>
<!--===============================================================================================-->
	<script src="../lib/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="../js/popper.js"></script>
	<script src="../js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="../lib/select2/js/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="../lib/daterangepicker/js/moment.min.js"></script>
	<script src="../lib/daterangepicker/js/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="../lib/countdowntime/js/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="../js/main.js"></script>

</body>
</html>