<?php session_start();
require('../connection/connection.php'); 
$query = $db->query("SELECT * FROM products WHERE product_categories_id=".$_GET['cat']); 
$products_list = $query->fetchAll(PDO::FETCH_ASSOC); ?>

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
                <div id="hot">
                <div class="col-md-9">

                <div class="row same-height-row">
                        <div class="col-sm-12">
 
    
     <?php foreach ($products_list as $products){ ?> 
           
            <!-- /.product -->
            <div class="col-sm-3">
                            <div class="product same-height">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="products.php?id=<?php echo $products['products_id']; ?>">
                                                <img src="../uploads/products/<?php echo $products['picture']; ?>" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="products.php?id=<?php echo $products['products_id']; ?>">
                                                <img src="../uploads/products/<?php echo $products['picture']; ?>" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="products.php?id=<?php echo $products['products_id']; ?>" class="invisible">
                                    <img src="../uploads/products/<?php echo $products['picture']; ?>" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="products.php?id=<?php echo $products['products_id']; ?>"><?php echo $products['name']; ?></a></h3>
                                    <p class="price">NT$ <?php echo $products['price']; ?></p>
                                </div>
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
                            <!-- /.product -->
                        </div> 
                        
                        
           
    
    <?php } ?>
    
        
        

                <!-- <div class="ribbon gift">
                    <div class="theribbon">GIFT</div>
                    <div class="ribbon-background"></div>
                </div> -->

                <!-- /.ribbon -->
                </div>
             <!-- /.product -->
        </div>
    
      <!-- /.product -->
    
      <!-- <div class="product-slider">
                        <div class="item">
                        

                        </div>    

                    </div>
                    /.product-slider -->
         </div>           
</div>
<!-- /.container -->

</div>
<!-- /#hot -->

<!-- *** HOT END *** -->

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