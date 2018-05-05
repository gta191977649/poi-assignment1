<?php
session_start();
function addCart()
{

    $itemID = null;
    $itemName = null;
    $uniPrice = null;
    $orderQty = null;
    $unitQuantity = null;
    $cartItems = array();

    if (isset($_GET["item_id"]) ) {

        $itemID = $_GET["item_id"];
        $orderQty = $_GET["item_qty"];
        $itemName = $_GET["item_name"];
        $uniPrice = $_GET["uni_price"];
        $unitQuantity = $_GET["unit_quantity"];

        //Add to the cart
        $newItem = array(
            "item_id" => $itemID,
            "item_name" => $itemName,
            "uni_price" => $uniPrice,
            "item_qty" => $orderQty,
            "unit_quantity" => $unitQuantity
        );
        
        if (isset($_SESSION["cart_items"])) {
            $cartItems = $_SESSION["cart_items"];
        }
        array_push($cartItems, $newItem);
        $_SESSION["cart_items"] = $cartItems;

    }
}
function clearCart()
{
    session_destroy();
    header("refresh:3;url=cart.php");
    die ("Your cart is clear");
}

if (isset($_GET["method"])) {

    switch ($_GET["method"]) {
        case "add":{
                addCart();
                break;
            }
        case "clear":{
                clearCart();
                break;
            }

    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cart</title>
    	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	 crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	 crossorigin="anonymous">
</head>
<body>
    <div class="container-fluid">
    <?php
        if (isset($_SESSION["cart_items"])) {
            echo '<table class="table">';
            echo '<tr><th>ID</th><th>name</th><th>unit price</th><th>quantity</th><th>Qty</th></tr>';
            foreach ($_SESSION["cart_items"] as $item) {
                echo '<tr>';
                echo "<td>" . $item["item_id"] . "</td>" . "<td>" . $item["item_name"] . "</td>" . "<td>" . $item["uni_price"] . "</td>" . "<td>" . $item["unit_quantity"] . "</td>" . "<td>" . $item["item_qty"] . "</td>";
                echo '</tr>';
            }
            echo '</table>';
            ?>
                <a href="cart.php?method=clear" class="btn btn-primary pull-right">Clear Cart</a>
            <?php
        } else {
            die("<h1>Please add an item into the cart.</h1>");
        }
    ?>
    </div>
</body>
</html>

