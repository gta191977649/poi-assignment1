<?php
    $product_cats = [
        [
            "cat_name" => "Frozen Food",
            "sub_cat" => [
                "cat_name" => "Seafood ",
                "start_id" => 1000,
                "end_id" => 1001,
            ],
            "cat_name" => "Milk Product",
            "sub_cat" => [
                "cat_name" => "Seafood ",
                "start_id" => 1000,
                "end_id" => 1001,
            ],
        ]
    ];
    print_r($product_cats);
function getCatetory($cat_id) {
    switch ($cat_id) {
        case 1000:
        case 1005: {
            return "Frozen Food";
        }
        case 2000:
        case 2006: {
            return "Home Health";
        }
        case 3000:
        case 3007: {
            return "Fresh Food";               
        }
        case 4000:
        case 4005: {
            return "Beverages";
        }
        case 5000:
        case 5004: {
            return "Pet Food";
        }
    }
    }

?>