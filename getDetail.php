<?php

    function displayItemDetail($id) {
        require "db.php";
        $sql = "SELECT * FROM `products` WHERE `product_id` = $id";
        $result = mysqli_query($conn, $sql);
        if($result == null) return null;
        $row = mysqli_fetch_assoc($result);

        //echo "Dtail:" . $row["product_name"] . "unit price" . $row["unit_price"] . "Q:" . $row["unit_quantity"];
        mysqli_free_result($result);
        return $row;
    }
    //displayItemDetail(1000);
?>