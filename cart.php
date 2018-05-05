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
    echo "Session clear";
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

if (isset($_SESSION["cart_items"])) {
    echo '<table class="table">';
    echo '<tr><th>ID</th><th>name</th><th>unit price</th><th>quantity</th><th>Qty</th></tr>';
    foreach ($_SESSION["cart_items"] as $item) {
        echo '<tr>';
        echo "<td>" . $item["item_id"] . "</td>" . "<td>" . $item["item_name"] . "</td>" . "<td>" . $item["uni_price"] . "</td>" . "<td>" . $item["unit_quantity"] . "</td>" . "<td>" . $item["item_qty"] . "</td>";
        echo '</tr>';
    }
    echo '</table>';
} else {
    die("<h1>Please add an item into the cart.</h1>");
}
