
<?php 
$query = $db->query("SELECT * FROM page WHERE id=3");
$shopping_rules = $query->fetch(PDO::FETCH_ASSOC);  ?>

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
    <?php require_once('template/head_files.php'); ?>
   



</head>

<body>
    <?php require_once('template/navbar.php'); ?>

    <div id="all">

        <div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="#">首頁</a>
                        </li>
                        <li><?php echo $shopping_rules['title']; ?></li>
                    </ul>
                </div>

                <div class="col-md-3">
                    <!-- *** PAGES MENU ***
 _________________________________________________________ -->
                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title"><?php echo $shopping_rules['title']; ?></h3>
                        </div>

                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked">
                                <li>
                                    <a href="shopping_rules.php">購物說明</a>
                                </li>
                                <li>
                                    <a href="#">FAQ</a>
                                </li>
                                <li>
                                    <a href="contact.php">聯絡客服</a>
                                </li>
                            </ul>

                        </div>
                    </div>

                    <!-- *** PAGES MENU END *** -->


                    <div class="banner">
                        <a href="#">
                            <img src="../images/banner.jpg" alt="sales 2014" class="img-responsive">
                        </a>
                    </div>
                </div>

                <div class="col-md-9">

                    <div class="box" id="text-page">
                        <h1><?php echo $shopping_rules['title']; ?></h1>

                        <p class="lead"><?php echo $shopping_rules['content']; ?> </p>

                    

                        <blockquote>
                            <p><?php echo $shopping_rules['content']; ?> </p>
                        </blockquote>

                        <h3><?php echo $shopping_rules['title']; ?></h3>

                        <ul>
                            <li><?php echo $shopping_rules['content']; ?></li>
                        </ul>

                        <hr>

                        <h2>Images</h2>

                        <div class="row">
                            <div class="col-md-4">
                                <p class="text-center">
                                    <img src="../images/detailsquare.jpg" class="img-circle img-responsive" alt="">
                                </p>
                                <p class="text-center">circle</p>
                            </div>
                            <div class="col-md-4">
                                <p class="text-center">
                                    <img src="../images/detailsquare.jpg" class="img-thumbnail  img-responsive" alt="">
                                </p>
                                <p class="text-center">thumbnail</p>
                            </div>
                            <div class="col-md-4">
                                <p class="text-center">
                                    <img src="../images/detailsquare.jpg" class="img-rounded img-responsive" alt="">
                                </p>
                                <p class="text-center">rounded</p>
                            </div>
                        </div>

                    </div>


                </div>
                <!-- /.col-md-9 -->
            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->
 <?php require_once('template/footer.php'); ?>


</body>

</html>