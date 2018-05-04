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

	<!-- Optional theme -->
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	 crossorigin="anonymous">

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
        die("<h1>Please choose an item.</h1>");
    }
    if ($data == null) {
        die("<h1>Invail data</h1>");
    }

?>
    <div class="container-fluid">
        <h1><?php echo $data["product_name"]; ?> <small>ID:<?php echo $data["product_id"]; ?></small></h1>
        <hr/>
        <table class="table table-hover table-bordered">
           <tr>
                <th>Price</th>
                <td>$<?php echo $data["unit_price"]; ?></td>
           </tr>
           <tr>
                <th>In Stock</th>
                <td><?php echo $data["in_stock"]; ?></td>
           </tr>
           <tr>
                <th>Quantity</th>
                <td><?php echo $data["unit_quantity"]; ?></td>
           </tr>
        </table>
        <form action="#" method="post">
                <div class="form-group">
                    <label for="qty">QTY:</label>
                    <input type="number" class="form-control" id="qty" placeholder="Qty to buy">
                </div>
                <input type="submit" class="btn btn-primary pull-right" value="Add to cart"/>
            </form>

    </div>

</body>
</html>
