<?php 
session_start();
require_once ('connection/connection.php');
$query = $db->query("SELECT * FROM product_categories ORDER BY product_categories_id ASC"); 
$categories = $query->fetchAll(PDO::FETCH_ASSOC);

// 新品上市
$query2 = $db->query("SELECT * FROM products ORDER BY created_at DESC LIMIT 0,18"); 
$products_list = $query2->fetchAll(PDO::FETCH_ASSOC);

// 最新消息
$query3 = $db->query("SELECT * FROM news ORDER BY published_date DESC LIMIT 0,2"); 
$news_list = $query3->fetchAll(PDO::FETCH_ASSOC);
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Cake House 帶給你最天然健康的幸福滋味">
    <meta name="author" content="Ondrej Svestka | ondrejsvestka.cz">
    <meta name="keywords" content="">

    <title>
        Cake House : 帶給你最天然健康的幸福滋味
    </title>

    <meta name="keywords" content="">

    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100' rel='stylesheet' type='text/css'>

    <!-- styles -->
    <link href="css/cake/font-awesome.css" rel="stylesheet">
    <link href="css/cake/bootstrap.min.css" rel="stylesheet">
    <link href="css/cake/animate.min.css" rel="stylesheet">
    <link href="css/cake/owl.carousel.css" rel="stylesheet">
    <link href="css/cake/owl.theme.css" rel="stylesheet">
    <link href="lib/content-slider/content-slider.css" rel="stylesheet">

    <!-- theme stylesheet -->
    <link href="css/cake/style.default.css" rel="stylesheet" id="theme-stylesheet">

    <!-- your stylesheet with modifications -->
    <link href="css/cake/custom.css" rel="stylesheet">

    <script src="js/cake/respond.min.js"></script>

    <link rel="shortcut icon" href="images/favicon.png">



</head>

<body>

<!-- *** TOPBAR ***
_________________________________________________________ -->
<div id="top">
       <div class="container">
           <div class="col-md-6 offer" data-animate="fadeInDown">
               <a href="#" class="btn btn-success btn-sm" data-animate-hover="shake">前往加入會員</a>  <a href="#">立即取得200元購物金!</a>
           </div>
           <div class="col-md-6" data-animate="fadeInDown">
               <ul class="menu">
               <?php if(isset($_SESSION['member']) && $_SESSION['member'] !=null) { ?>
                    <li><a href="frontend/customer-account.php" >會員專區</a>
                   </li>
                   <li>
                        <a href="frontend/logout.php"><i class="fa fa-sign-out"></i> 登出</a>
                    </li>
               <?php }else{ ?>
                   <li><a href="#" data-toggle="modal" data-target="#login-modal">會員登入</a>
                   </li>
                   <li><a href="frontend/register.php">加入會員</a>
                   </li>
               <?php } ?>
                   <li><a href="frontend/contact.php">聯絡我們</a>
                   </li>
               </ul>
           </div>
       </div>
       <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true">
           <div class="modal-dialog modal-sm">

              <div class="modal-content">
                   <div class="modal-header">
                       <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                       <h4 class="modal-title" id="Login">會員登入</h4>
                   </div>
                   <div class="modal-body">
                       <form action="check_login.php" method="post">
                           <div class="form-group">
                               <input type="text" class="form-control" id="email-modal" placeholder="email" name="email">
                           </div>
                           <div class="form-group">
                               <input type="password" class="form-control" id="password-modal" placeholder="password" name="password">
                           </div>

                           <p class="text-center">
                               <button class="btn btn-primary"><i class="fa fa-sign-in"></i> 登入</button>
                           </p>

                       </form>

                       <p class="text-center text-muted">尚未註冊會員?</p>
                       <p class="text-center text-muted"><a href="register.php"><strong>立即註冊</strong></a>! 1分鐘立即註冊即可領取百元購物金 !</p>

                   </div>
               </div>
           </div>
       </div>

   </div>

   <!-- *** TOP BAR END *** -->

   <!-- *** NAVBAR ***
_________________________________________________________ -->

   <div class="navbar navbar-default yamm" role="navigation" id="navbar">
       <div class="container">
           <div class="navbar-header">

               <a class="navbar-brand home" href="index.php" data-animate-hover="bounce">
                   <img src="images/logo.png" alt="Cake House logo" class="hidden-xs">
                   <img src="images/logo-small.png" alt="Cake House logo" class="visible-xs"><span class="sr-only">Cake House - go to homepage</span>
               </a>
               <div class="navbar-buttons">
                   <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation">
                       <span class="sr-only">Toggle navigation</span>
                       <i class="fa fa-align-justify"></i>
                   </button>
                   <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#search">
                       <span class="sr-only">Toggle search</span>
                       <i class="fa fa-search"></i>
                   </button>
                   <a class="btn btn-default navbar-toggle" href="basket.php">
                       <i class="fa fa-shopping-cart"></i>  <span class="hidden-xs">(<?php if(isset($_SESSION['Cart']) && $_SESSION['Cart'] != null) echo count($_SESSION['Cart']); else echo "0"; ?>)</span>
                   </a>
                      <!-- //  if (isset($_SESSION['Cart'])) {
                           echo count($_SESSION['Cart']); 
                       }else {  echo '0'; } -->
               </div>
           </div>
           <!--/.navbar-header -->

           <div class="navbar-collapse collapse" id="navigation">

               <ul class="nav navbar-nav navbar-left">
                   <li><a href="index.php">首頁</a>
                   </li>
                   <li ><a href="frontend/about.php">關於我們</a>
                   </li>
                   <li ><a href="frontend/news_list.php">最新消息</a>
                   </li>
                   <li class="dropdown yamm-fw">
                       <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">產品介紹 <b class="caret"></b></a>
                       <ul class="dropdown-menu col-md-2 col-sm-3">
                           <li>
                               <div class="yamm-content">
                                   <div class="row">
                                       <div class="col-md-12">
                                       <?php foreach($categories as $product_categories){ ?>
                                       <a href="frontend/products_list.php?cat=<?php echo $product_categories['product_categories_id']; ?>">
                                           <h5><?php echo $product_categories['category']; ?></h5></a>
                                       <?php } ?>
                                           <!-- <ul>
                                               <li><a href="category.html">T-shirts</a>
                                               </li>
                                           </ul> -->
                                       </div>
                                    
                                    </div>
                                </div>    
                               <!-- /.yamm-content -->
                           </li>
                       </ul>
                   </li>
                   <li ><a href="frontend/contact.php">聯絡我們</a>
                   </li>
                                    
               </ul>

           </div>
           <!--/.nav-collapse -->

           <div class="navbar-buttons">

               <div class="navbar-collapse collapse right" id="basket-overview">
                   <a href="frontend/basket.php" class="btn btn-primary navbar-btn"><i class="fa fa-shopping-cart"></i><span class="hidden-sm">(<?php if(isset($_SESSION['Cart']) && $_SESSION['Cart'] != null) echo count($_SESSION['Cart']); else echo "0"; ?>)</span></a>

                      <!-- //  if (isset($_SESSION['Cart'])) {
                           echo count($_SESSION['Cart']); 
                       }else {  echo '0'; } -->
               </div>
               <!--/.nav-collapse -->

               <div class="navbar-collapse collapse right" id="search-not-mobile">
                   <button type="button" class="btn navbar-btn btn-primary" data-toggle="collapse" data-target="#search">
                       <span class="sr-only">Toggle search</span>
                       <i class="fa fa-search"></i>
                   </button>
               </div>

           </div>

           <div class="collapse clearfix" id="search">

                <form action="frontend/search_result.php" method="post" class="navbar-form" role="search">
                   <div class="input-group">
                       <input type="text" class="form-control" placeholder="Search">
                       <span class="input-group-btn">

           <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>

           </span>
                   </div>
               </form>

           </div>
           <!--/.nav-collapse -->

       </div>
       <!-- /.container -->
   </div>
   <!-- /#navbar -->

   <!-- *** NAVBAR END *** -->




    <div id="all">

        <div id="content">

           <div class="container">
                <div class="col-md-12">
                    <div id="main-slider">
                    <div class="item">
                            <img src="images/ad-banner1.jpg" alt="" class="img-responsive">
                        </div>
                        <div class="item">
                            <img src="images/main-slider1.jpg" alt="" class="img-responsive">
                        </div>
                        <div class="item">
                            <img class="img-responsive" src="images/main-slider2.jpg" alt="">
                        </div>
                        <div class="item">
                            <img class="img-responsive" src="images/main-slider3.jpg" alt="">
                        </div>
                        <div class="item">
                            <img class="img-responsive" src="images/main-slider4.jpg" alt="">
                        </div>
                    </div>
                    <!-- /#main-slider -->
                </div>
            </div>

                 <!-- *** ADVANTAGES HOMEPAGE ***
 _________________________________________________________ -->
 <div id="advantages">

<div class="container">
    <div class="same-height-row">
        <div class="col-sm-4">
            <div class="box same-height clickable">
                <div class="icon"><i class="fa fa-heart"></i>
                </div>

                <h3><a href="#">We love our customers</a></h3>
                <p>We are known to provide best possible service ever</p>
            </div>
        </div>

        <div class="col-sm-4">
            <div class="box same-height clickable">
                <div class="icon"><i class="fa fa-tags"></i>
                </div>

                <h3><a href="#">Best prices</a></h3>
                <p>You can check that the height of the boxes adjust when longer text like this one is used in one of them.</p>
            </div>
        </div>

        <div class="col-sm-4">
            <div class="box same-height clickable">
                <div class="icon"><i class="fa fa-thumbs-up"></i>
                </div>

                <h3><a href="#">100% satisfaction guaranteed</a></h3>
                <p>Free returns on everything for 3 months.</p>
            </div>
        </div>
    </div>
    <!-- /.row -->

</div>
<!-- /.container -->

</div>
<!-- /#advantages -->

<!-- *** ADVANTAGES END *** -->
             <!-- *** HOT PRODUCT SLIDESHOW ***
 _________________________________________________________ -->
 <div id="hot">

<div class="box">
    <div class="container">
        <div class="col-md-12">
            <h2>新品上市</h2>
        </div>
    </div>
</div>

<div class="container">
<div class="row same-height-row">
    <div class="product-slider">
    <?php foreach ($products_list as $products){ ?> 

<div class="item">
    <div class="col-md-16">
            <div class="product same-height">
                <div class="flip-container">
                    <div class="flipper">
                        <div class="front">
                            <a href="frontend/products.php?id=<?php echo $products['products_id']; ?>">
                                <img src="uploads/products/<?php echo $products['picture']; ?>" alt="" class="img-responsive">
                            </a>
                        </div>
                        <!-- /.flipper -->
                        <div class="back">
                            <a href="frontend/products.php?id=<?php echo $products['products_id']; ?>">
                                <img src="uploads/products/<?php echo $products['picture']; ?>" alt="" class="img-responsive">
                            </a>
                        </div>
                        <!-- /.back -->
                    </div>
                </div>
                <!-- /.flip-container -->
                <a href="frontend/products.php?id=<?php echo $products['products_id']; ?>" class="invisible">
                    <img src="uploads/products/<?php echo $products['picture']; ?>" alt="" class="img-responsive">
                </a>
                <div class="text">
                    <h3><a href="frontend/products.php?id=<?php echo $products['products_id']; ?>"><?php echo $products['name']; ?></a></h3>
                    <p class="price">NT$ <?php echo $products['price']; ?></p>
                </div>
                <!-- /.text -->
            </div>
            <!-- /.product .same-height -->
     
    </div>
       <!-- /.col -->

       <!-- /.text -->
<?php if($products['type']== 1){ ?>
         <div class="ribbon sale">
        <div class="theribbon">SALE</div>
       <div class="ribbon-background"></div>
                                    </div>
<?php }else if($products['type'] == 2){ ?>
 <!-- /.ribbon -->
 <div class="ribbon new">
<div class="theribbon">NEW</div>
 <div class="ribbon-background"></div>
</div>
<?php } ?>


<!-- /.ribbon -->
</div>
<!-- /.item -->

               <?php } ?>

<!-- /.text -->


<!-- <div class="ribbon gift">
<div class="theribbon">GIFT</div>
<div class="ribbon-background"></div>
</div> -->

<!-- /.ribbon -->
     

    </div>
    <!-- /.product-slider -->
</div>
<!-- /.row -->
</div>
<!-- /.container -->
</div>
<!-- /#hot -->

<!-- *** HOT END *** -->

       

                               <!-- *** BLOG HOMEPAGE ***
 _________________________________________________________ -->

            <div class="box text-center" data-animate="fadeInUp">
                <div class="container">
                    <div class="col-md-12">
                        <h2>NEWS 聽聞</h2>

                        <p class="lead">
                        想知道本站所有的大小事嗎 ?
                        </p>
                    </div>
                </div>
            </div>
      
            <div class="container">

<div class="col-md-12" data-animate="fadeInUp">

    <div id="blog-homepage" class="row">
    <?php foreach($news_list as $news){ ?>
        <div class="col-sm-6">
            <div class="post">
                <h4><a href="frontend/news.php"><?php echo $news['title']; ?></a></h4>
                <p class="author-category"><i class="fa fa-calendar-o"></i> <?php echo $news['published_date']; ?>
                </p>
                <hr>
                <p class="intro"><?php echo mb_strimwidth(strip_tags($news['content']),0,250,"..."); ?></p>
                <p class="read-more"><a href="frontend/news.php?id=<?php echo $news['news_id']; ?>" class="btn btn-primary">延伸瀏覽</a>
                </p>
            </div>
        </div>
    <?php } ?>
       

    </div>
    <!-- /#blog-homepage -->
</div>
</div>
<!-- /.container -->

<!-- *** BLOG HOMEPAGE END *** -->

         


        </div>
        <!-- /#content -->

        <!-- *** FOOTER ***
 _________________________________________________________ -->
        <div id="footer" data-animate="fadeInUp">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <h4>Pages</h4>

                        <ul>
                            <li><a href="frontend/about.php">關於我們</a>
                            </li>
                            <li><a href="frontend/about.php">Terms and conditions</a>
                            </li>
                            <li><a href="#">FAQ</a>
                            </li>
                            <li><a href="frontend/contact.php">聯絡我們</a>
                            </li>
                        </ul>

                        <hr>

                        <h4>User section</h4>

                        <ul>
                            <li><a href="#" data-toggle="modal" data-target="#login-modal">Login</a>
                            </li>
                            <li><a href="frontend/register.php">Regiter</a>
                            </li>
                        </ul>

                        <hr class="hidden-md hidden-lg hidden-sm">

                    </div>
                    <!-- /.col-md-3 -->

                    <div class="col-md-3 col-sm-6">

                        <h4>Top categories</h4>

                        <h5>Men</h5>

                        <ul>
                            <li><a href="category.html">T-shirts</a>
                            </li>
                            <li><a href="category.html">Shirts</a>
                            </li>
                            <li><a href="category.html">Accessories</a>
                            </li>
                        </ul>

                        <h5>Ladies</h5>
                        <ul>
                            <li><a href="category.html">T-shirts</a>
                            </li>
                            <li><a href="category.html">Skirts</a>
                            </li>
                            <li><a href="category.html">Pants</a>
                            </li>
                            <li><a href="category.html">Accessories</a>
                            </li>
                        </ul>

                        <hr class="hidden-md hidden-lg">

                    </div>
                    <!-- /.col-md-3 -->

                    <div class="col-md-3 col-sm-6">

                        <h4>門市地點</h4>

                        <p><strong>Cake House Ltd.</strong>
                            <br>13/25 New Avenue
                            <br>New Heaven
                            <br>45Y 73J
                            <br>England
                            <br>
                            <strong>Great Britain</strong>
                        </p>

                        <a href="frontend/contact.php">聯絡我們</a>

                        <hr class="hidden-md hidden-lg">

                    </div>
                    <!-- /.col-md-3 -->



                    <div class="col-md-3 col-sm-6">

                        <h4>訂閱電子報</h4>

                        <p class="text-muted">我們將不定時寄送優惠與開課訊息.</p>

                        <form>
                            <div class="input-group">

                                <input type="text" class="form-control">

                                <span class="input-group-btn">

			    <button class="btn btn-default" type="button">歡迎訂閱!</button>

			</span>

                            </div>
                            <!-- /input-group -->
                        </form>

                        <hr>

                        <h4>追蹤我們</h4>

                        <p class="social">
                            <a href="#" class="facebook external" data-animate-hover="shake"><i class="fa fa-facebook"></i></a>
                            <a href="#" class="twitter external" data-animate-hover="shake"><i class="fa fa-twitter"></i></a>
                            <a href="#" class="instagram external" data-animate-hover="shake"><i class="fa fa-instagram"></i></a>
                            <a href="#" class="gplus external" data-animate-hover="shake"><i class="fa fa-google-plus"></i></a>
                            <a href="#" class="email external" data-animate-hover="shake"><i class="fa fa-envelope"></i></a>
                        </p>


                    </div>
                    <!-- /.col-md-3 -->

                </div>
                <!-- /.row -->

            </div>
            <!-- /.container -->
        </div>
        <!-- /#footer -->

        <!-- *** FOOTER END *** -->




        <!-- *** COPYRIGHT ***
 _________________________________________________________ -->
        <div id="copyright">
            <div class="container">
                <div class="col-md-6">
                    <p class="pull-left">© 2018 Cake House All Right Reserved.</p>

                </div>
                <div class="col-md-6">
                    <p class="pull-right">Design by <a href="https://bootstrapious.com/e-commerce-templates">冰河水源 Rainie Mist</a>
                         <!-- Not removing these links is part of the license conditions of the template. Thanks for understanding :) If you want to use the template without the attribution links, you can do so after supporting further themes development at https://bootstrapious.com/donate  -->
                    </p>
                </div>
            </div>
        </div>
        <!-- *** COPYRIGHT END *** -->



    </div>
    <!-- /#all -->


    

    <!-- *** SCRIPTS TO INCLUDE ***
 _________________________________________________________ -->
    <script src="js/cake/jquery-1.11.0.min.js"></script>
    <script src="js/cake/bootstrap.min.js"></script>
    <script src="js/cake/jquery.cookie.js"></script>
    <script src="js/cake/waypoints.min.js"></script>
    <script src="js/cake/modernizr.js"></script>
    <script src="js/cake/bootstrap-hover-dropdown.js"></script>
    <script src="js/cake/owl.carousel.min.js"></script>
    <script src="js/cake/front.js"></script>


</body>

</html>