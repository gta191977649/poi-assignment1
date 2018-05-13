<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	 crossorigin="anonymous">

	<link rel="stylesheet" href="https://gta191977649.github.io/bootstrap-va11/scss/main.css">
    <link rel="stylesheet" href="helper.css">
</head>
<body>
    <?php
        include "getDetail.php";
        $id = null;
        $data = null;
        if (isset($_GET["id"])) {
            $id = $_GET["id"];

            $data = displayItemDetail($id);
        } else {
            //die("<h1>Please choose an item.</h1>");
            die('<div class="container vertical-center "><div class="alert alert-info va-11-box-shadow" role="alert"><strong>System</strong> Please choose an item.</div></div>');
        }
        if ($data == null) {
            die('<div class="container vertical-center"><div class="alert alert-danger va-11-box-shadow" role="alert"><strong>System</strong> Invaild Data ID.</div></div>');
        }

    ?>
    <div class="container va11-theme-border va-11-box-shadow " style="margin-top:80px; margin-bottom:80px;">
        <h1><?php echo $data["product_name"]; ?> <small>ID:<?php echo $data["product_id"]; ?></small></h1>
        <hr/>
        <table class="table table-hover table-bordered">
           <tr>
                <th>Price</th>
                <td>$<?php echo $data["unit_price"]; ?></td>
           </tr>
           <tr>
                <th>In Stock</th>
                <td id="stock"><?php echo $data["in_stock"]; ?></td>
           </tr>
           <tr>
                <th>Quantity</th>
                <td><?php echo $data["unit_quantity"]; ?></td>
           </tr>
        </table>
        <form id="item-form" action="cart.php" method="get">
            <div class="form-group">
                <label for="item_qty">QTY:</label>
                <input name="method" type="hidden" value="add"/>
                <input name="item_id" type="hidden" value="<?php echo $data["product_id"]; ?>"/>
                <input name="item_name" type="hidden" value="<?php echo $data["product_name"]; ?>"/>
                <input name="uni_price" type="hidden" value="<?php echo $data["unit_price"]; ?>"/>
                <input name="unit_quantity" type="hidden" value="<?php echo $data["unit_quantity"]; ?>"/>
                <input name="item_qty" type="number" id="input_qty" class="form-control" id="qty" value="1" placeholder="Qty to buy" required>
            </div>
            <button type="submit" class="btn btn-lg btn-primary pull-right">add to cart</button>
        </form>

    </div>
    <script src="https://code.jquery.com/jquery-2.2.4.min.js" type="text/javascript"></script>

    <script>
        $('#item-form').submit(function (e) {
            e.preventDefault();
            //判断是否超过库存
            var stock = $('#stock').text();
            var inputQty = $('#input_qty').val();
            //alert(stock);
            if(parseInt(inputQty) > parseInt(stock)) {
                alert("Invaild Qty amount!");
                return;
            }
            $.ajax({
                url:'cart.php',
                type:'get',
                data:$('#item-form').serialize(),
                success:function(){
                    //alert("add item seccuss");
                    parent.frames['bottom_right'].location.href = "cart.php";

                }
            });
        });
    </script>
    <!--
        Ref:
            ThoughtCo. (2016). Learn to Target a Window or Frame Using JavaScript or HTML. [online] Available at: https://www.thoughtco.com/target-a-window-or-frame-using-javascript-or-html-4092194 [Accessed 5 May 2018].

    -->
</body>
</html>


