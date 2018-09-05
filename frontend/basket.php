<?php
session_start();
//print_r($_SESSION['Cart']);
$update="false";
if(isset($_POST['EditCart']) && $_POST['EditCart'] == "UPDATE"){
    for ($i = 0; $i< count($_SESSION['Cart']); $i++){
        if($_POST['quantity'][$i] <= 0) $_POST['quantity'][$i]=1;
        $_SESSION['Cart'][$i]['quantity'] = $_POST['quantity'][$i];
    }
    $update = "true";

}
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

    <div id="all">

        <div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="#">首頁</a>
                        </li>
                        <li>我的購物車</li>
                    </ul>
                </div>

                <div class="col-md-9" id="basket">

                    <div class="box">

                        <form method="post" action="basket.php">

                            <h1>我的購物車</h1>
                            <?php if(isset($_SESSION['Cart']) && $_SESSION['Cart'] != null){ ?>
                            <p class="text-muted">目前有<?php echo count($_SESSION['Cart']); ?>個未結帳商品</p>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th colspan="2">產品名稱</th>
                                            <th>數量</th>
                                            <th>單價</th>
                                            <th>折扣</th>
                                            <th colspan="2">金額</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <?php 
                                    $subtotal = 0;
                                    $total_price = 0;
                                    for ($i = 0; $i< count($_SESSION['Cart']); $i++){  //有商品在購物車時顯示 ?>
                                        <tr>
                                            <td data-title="商品圖片">
                                                <a href="products.php?id=<?php echo $_SESSION['Cart'][$i]['products_id']; ?>">
                                                    <img src="../uploads/products/<?php echo $_SESSION['Cart'][$i]['pic']; ?>" alt="" width="150">
                                                </a>
                                            </td>
                                            <td data-title="商品名稱"><a href="products.php?id=<?php echo $_SESSION['Cart'][$i]['products_id']; ?>"><?php echo $_SESSION['Cart'][$i]['product_name']; ?></a>
                                            </td>
                                            <td data-title="數量">
                                            <input type="number" name="quantity[]" value="<?php echo $_SESSION['Cart'][$i]['quantity']; ?>" class="form-control">
                                            <input type="hidden" name="index" value="<?php echo $i;?>">
                                            <input type="hidden" name="EditCart" value="UPDATE">


                                            </td>
                                            <td data-title="單價">
                                            $NT <?php echo $_SESSION['Cart'][$i]['price']; ?>
                                            </td>
                                            <td>$0.00</td>
                                            <td data-title="金額">$NT <?php $subtotal = $_SESSION['Cart'][$i]['quantity'] * $_SESSION['Cart'][$i]['price']; echo $subtotal;?></td>
                                            <td><a href="cart/cart_delete.php?CartID=<?php echo $i; ?>"><i class="fa fa-trash-o"></i></a>
                                            </td>
                                        </tr>
                                        <?php 
                                            $total_price += $subtotal;
                                        } ?>
                                       
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th colspan="5">總計</th>
                                            <th colspan="2">$NT <?php echo $total_price; ?></th>
                                        </tr>
                                    </tfoot>
                                </table>

                            </div>
                            <!-- /.table-responsive -->

                            <div class="box-footer">
                                <div class="pull-left">
                                    <a href="products_list.php?cat=1" class="btn btn-default"><i class="fa fa-chevron-left"></i> 繼續購物</a>
                                </div>
                                <div class="pull-right">
                                    <button type="submit" class="btn btn-default"><i class="fa fa-refresh"></i> 更新購物車</button>
                                    <a href="checkout1.php" class="btn btn-primary">我要結帳 <i class="fa fa-chevron-right"></i>
                                    </a>
                                </div>
                            </div>
                            <?php }else{ //未加入商品至購物車顯示?>
                                <h4>目前購物車沒有商品，請至<a href="products_list.php?cat=1">產品專區</a>進行購物。</h4>         
                            <?php } ?>

                        </form>

                        <div class="modal fade" id="info-modal" tabindex="-1" role="dialog" aria-labelledby="info" aria-hidden="true">
    <div class="modal-dialog modal-sm">

        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">訊息</h4>
            </div>
            <div class="modal-body text-center">
                <p class="text-center text-muted">成功更新數量!</p>
                <button class="btn btn-primary" data-dismiss="modal"><i class="fal fa-check-circle"></i>確定</button>
            </div>
        </div>
    </div>
</div>

                        
                      

                    </div>
                    <!-- /.box -->


                    <div class="row same-height-row">
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
                        </div>

                        <div class="col-md-3 col-sm-6">
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
                            </div>
                            <!-- /.product -->
                        </div>


                        <div class="col-md-3 col-sm-6">
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
                            <!-- /.product -->
                        </div>

                    </div>


                </div>
                <!-- /.col-md-9 -->

                <div class="col-md-3">
                    <div class="box" id="order-summary">
                        <div class="box-header">
                            <h3>訂單總計</h3>
                        </div>
                        <p class="text-muted">購物滿2000免運費，只限台灣本島，離島需加上稅金與運費</p>

                        <div class="table-responsive">
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <td>商品總計</td>
                                        <th>$NT <?php echo $total_price; ?></th>
                                    </tr>
                                   
                                    <tr class="total">
                                        <td>總金額</td>
                                        <th>$NT <?php echo $total_price; ?></th>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                    </div>


                    <div class="box">
                        <div class="box-header">
                            <h4>優惠碼</h4>
                        </div>
                        <p class="text-muted">請於下方輸入優惠代碼</p>
                        <form>
                            <div class="input-group">

                                <input type="text" class="form-control">

                                <span class="input-group-btn">

					<button class="btn btn-primary" type="button"><i class="fa fa-gift"></i></button>

				    </span>
                            </div>
                            <!-- /input-group -->
                        </form>
                    </div>

                </div>
                <!-- /.col-md-3 -->

            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->

       <?php require_once('template/footer.php'); ?>


        <?php if($update == "true"){ ?>
           <script>
            $(function(){
                $('#info-modal').modal();
                    setTimeout(function() {
                        $('#info-modal').modal('hide');
                    }, 2000);     
            });
           </script>
        <?php } ?>
        <?php if($_GET['Del'] == "true"){ ?>
            <script>
                $(function(){
                    $('.modal-body>p').html('成功移除一個商品!');
                    $('#info-modal').modal();
                    setTimeout(function() {
                        $('#info-modal').modal('hide');
                    }, 2000);   
                });
            </script>
        <?php } ?>




</body>

</html>