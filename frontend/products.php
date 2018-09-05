<?php 
session_start();
//unset($_SESSION['Cart']);
require('../connection/connection.php'); 
$query = $db->query("SELECT * FROM products WHERE products_id=".$_GET['id']);
$products = $query->fetch(PDO::FETCH_ASSOC); 
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

    <?php require_once('template/head_files.php'); ?>



</head>

<body>
<?php require_once('template/navbar.php'); ?>

    <!-- *** NAVBAR END *** -->

    <div id="all">

        <div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                    <li><a href="../index.php">首頁</a>
                        </li>
                        <li><a href="#">產品介紹</a>
                        </li>
                        <li><a href="#">產品分類</a>
                        </li>
                    </ul>

                </div>

                <div class="col-md-3">
                    <!-- *** MENUS AND FILTERS ***
 _________________________________________________________ -->
                    <div class="panel panel-default sidebar-menu">

                       <div class="panel-heading">
                            <h3 class="panel-title">產品分類</h3>
                        </div>

                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked category-menu">
                            <?php foreach($categories as $side_categories){ 
                                    $query = $db->query("SELECT * FROM products WHERE product_categories_id=".$side_categories['product_categories_id']);
                                    $total_products = count ($query->FetchAll(PDO::FETCH_ASSOC));
                                    ?>
                                <li>
                               
                                    <a href="products_list.php?cat=<?php echo $side_categories['product_categories_id'];?>">
                                    <?php echo $side_categories['category']; ?><span class="badge pull-right"><?php echo $total_products; ?></span></a>
                                    <!-- // <ul>
                                    //     <li><a href="category.html">T-shirts</a>
                                    //     </li>
                                    //     <li><a href="category.html">Shirts</a>
                                    //     </li>
                                    //     <li><a href="category.html">Pants</a>
                                    //     </li>
                                    //     <li><a href="category.html">Accessories</a>
                                    //     </li>
                                    // </ul> -->
                                </li>
                                <?php } ?>
                            </ul>
                       

                        </div>
                    </div>

                    <!-- <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Brands <a class="btn btn-xs btn-danger pull-right" href="#"><i class="fa fa-times-circle"></i> Clear</a></h3>
                        </div>

                        <div class="panel-body">

                            <form>
                                <div class="form-group">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox">Armani (10)
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox">Versace (12)
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox">Carlo Bruni (15)
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox">Jack Honey (14)
                                        </label>
                                    </div>
                                </div>

                                <button class="btn btn-default btn-sm btn-primary"><i class="fa fa-pencil"></i> Apply</button>

                            </form>

                        </div>
                    </div> -->

                    <!-- <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Colours <a class="btn btn-xs btn-danger pull-right" href="#"><i class="fa fa-times-circle"></i> Clear</a></h3>
                        </div>

                        <div class="panel-body">

                            <form>
                                <div class="form-group">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox"> <span class="colour white"></span> White (14)
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox"> <span class="colour blue"></span> Blue (10)
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox"> <span class="colour green"></span> Green (20)
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox"> <span class="colour yellow"></span> Yellow (13)
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox"> <span class="colour red"></span> Red (10)
                                        </label>
                                    </div>
                                </div>

                                <button class="btn btn-default btn-sm btn-primary"><i class="fa fa-pencil"></i> Apply</button>

                            </form>

                        </div>
                    </div> -->

                    <!-- *** MENUS AND FILTERS END *** -->

                    <div class="banner">
                        <a href="#">
                        <img src="../images/ad-banner.jpg" alt="" class="img-responsive">
                        </a>
                    </div>
                </div>

                <div class="col-md-9">

                    <div class="row" id="productMain">
                        <div class="col-sm-6">
                            <div id="mainImage">
                                <img src="../uploads/products/<?php echo $products['picture']; ?>" alt="" class="img-responsive">
                            </div>

                              <?php if ($products['type'] ==1) { ?>
                <div class="ribbon sale">
                    <div class="theribbon">SALE</div>
                    <div class="ribbon-background"></div>
                </div>
                <?php } else if ($products['type'] ==2){ ?> 
                <!-- /.ribbon -->

                <div class="ribbon new">
                    <div class="theribbon">NEW</div>
                    <div class="ribbon-background"></div>
                </div>
                <?php } ?> 
                            <!-- /.ribbon -->

                        </div>
                        <div class="col-sm-6">
                        <form action="cart/add_cart.php" method="post">
                            <div class="box">
                                <h1 class="text-center"><?php echo $products['name']; ?></h1>
                                <p class="goToDescription"><a href="#details" class="scroll-to">詳細介紹</a>
                                </p>
                                <p class="quantity col-sm-3"><input type="number" value="1" name="quantity" class="form-control"></p>
                                <p class="price">NT$ <?php echo $products['price']; ?> </p>
                                <?php if(isset($_GET['Existed']) && $_GET['Existed'] != null){
                                            if($_GET['Existed'] == 'true'){ ?>
                                    <div class="alert alert-danger">
                                        <strong>此商品已存在購物車，請至「我的購物車」修改數量。</strong>
                                    </div>
                                    <?php }else{ ?>
                                     <div class="alert alert-danger">
                                        <strong>成功加入購物車!</strong>
                                    </div>   
                                    <?php  }//end $_GET['Existed'] == 'true'
                                        } ?>   
                                <p class="text-center buttons">
                                    <button type="submit" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> 加入購物車</button> 
                                    <!-- <a href="#" class="btn btn-default"><i class="fa fa-heart"></i> 加入願望清單</a> -->
                                </p>
                                <input type="hidden" name="pic" value="<?php echo $products['picture']; ?>">
                                <input type="hidden" name="product_name" value="<?php echo $products['name']; ?>">
                                <input type="hidden" name="price" value="<?php echo $products['price']; ?>">
                                <input type="hidden" name="products_id" value="<?php echo $products['products_id']; ?>">


                            </div>

                            <div class="row" id="thumbs">
                                <div class="col-xs-4">
                                    <a href="../uploads/products/<?php echo $products['picture']; ?>" class="thumb">
                                        <img src="../uploads/products/<?php echo $products['picture']; ?>" alt="" class="img-responsive">
                                    </a>
                                </div>
                                <div class="col-xs-4">
                                    <a href="../uploads/products/<?php echo $products['picture']; ?>" class="thumb">
                                        <img src="../uploads/products/<?php echo $products['picture']; ?>" alt="" class="img-responsive">
                                    </a>
                                </div>
                                <div class="col-xs-4">
                                    <a href="../uploads/products/<?php echo $products['picture']; ?>" class="thumb">
                                        <img src="../uploads/products/<?php echo $products['picture']; ?>" alt="" class="img-responsive">
                                    </a>
                                </div>
                            </div>
                        </div>

                    </div>


                    <div class="box" id="details">
                        <p>
                            <h4>產品介紹</h4>

                            <blockquote>
                                <p class="lead"><em><?php echo mb_strimwidth (strip_tags($products ['description']),0,40,"..."); ?></em>
                                </p>
                            </blockquote>

                            <?php echo $products ['description']; ?>


                            <hr>
                            <div class="social">
                                <h4>分享給同仁 愛好者</h4>
                                <p>
                                    <a href="#" class="external facebook" data-animate-hover="pulse"><i class="fa fa-facebook"></i></a>
                                    <a href="#" class="external gplus" data-animate-hover="pulse"><i class="fa fa-google-plus"></i></a>
                                    <a href="#" class="external twitter" data-animate-hover="pulse"><i class="fa fa-twitter"></i></a>
                                    <a href="#" class="email" data-animate-hover="pulse"><i class="fa fa-envelope"></i></a>
                                </p>
                            </div>
                    </div>

                    <!-- <div class="row same-height-row">
                        <div class="col-md-3 col-sm-6">
                            <div class="box same-height">
                                <h3>You may also like these products</h3>
                            </div>
                        </div>

                        <div class="col-md-3 col-sm-6">
                            <div class="product same-height">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="order_detail.html">
                                                <img src="../../images/product2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="order_detail.html">
                                                <img src="../../images/product2_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="order_detail.html" class="invisible">
                                    <img src="../../images/product2.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3>Fur coat</h3>
                                    <p class="price">$143</p>
                                </div>
                            </div> -->
                            <!-- /.product -->
                        </div>

                    </div>
                   <!-- <div class="container">
                    <div class="row same-height-row">
                        <div class="col-sm-1 col-md-2">
                            <div class="box same-height">
                                <h3>Products viewed recently</h3>
                            </div>
                        </div>


                        <div class="col-sm-1 col-md-2">
                            <div class="product same-height">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="order_detail.html">
                                                <img src="../images/product2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="order_detail.html">
                                                <img src="../images/product2_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="order_detail.html" class="invisible">
                                    <img src="../images/product2.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3>Fur coat</h3>
                                    <p class="price">$143</p>
                                </div>
                            </div>
                            <!-- /.product -->
                        <!-- </div>  -->

                              <!-- <div class="col-sm-1 col-md-2">
                            <div class="product same-height">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="order_detail.html">
                                                <img src="../images/product2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="order_detail.html">
                                                <img src="../images/product2_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="order_detail.html" class="invisible">
                                    <img src="../images/product2.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3>Fur coat</h3>
                                    <p class="price">$143</p>
                                </div> -->
                            </div>
                            <!-- /.product -->
                        <!-- </div> -->

                        
                        <!-- <div class="col-sm-1 col-md-2">
                            <div class="product same-height">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="order_detail.html">
                                                <img src="../images/product2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="order_detail.html">
                                                <img src="../images/product2_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="order_detail.html" class="invisible">
                                    <img src="../images/product2.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3>Fur coat</h3>
                                    <p class="price">$143</p>
                                </div>
                            </div> -->
                            <!-- /.product -->
                        <!-- </div> -->

                        <!-- <div class="col-sm-1 col-md-2">
                            <div class="product same-height">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="order_detail.html">
                                                <img src="../images/product1.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="order_detail.html">
                                                <img src="../images/product1_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="order_detail.html" class="invisible">
                                    <img src="../images/product1.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3>Fur coat</h3>
                                    <p class="price">$143</p>
                                </div>
                            </div> -->
                            <!-- /.product -->
                        <!-- </div> -->


                        <!-- <div class="col-sm-1 col-md-2">
                            <div class="product same-height">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="order_detail.html">
                                                <img src="../images/product3.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="order_detail.html">
                                                <img src="../images/product3_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="order_detail.html" class="invisible">
                                    <img src="../images/product3.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3>Fur coat</h3>
                                    <p class="price">$143</p>

                                </div>
                            </div>
                            </div> -->
                            <!-- /.product -->
                        <!-- </div>  -->

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