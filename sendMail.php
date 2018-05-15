
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Send Mail</title>
    <!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	 crossorigin="anonymous">

	<link rel="stylesheet" href="https://gta191977649.github.io/bootstrap-va11/scss/main.css">
    <link rel="stylesheet" href="helper.css">
</head>
<body>
    <?php

    //客户表单POST参数
    $firstName = null;
    $lastName = null;
    $address = null;
    $suburb = null;
    $state = null;
    $country = null;
    $email = null;
    $orderDetails = "";
    //如果表单POST请求参数正确
    if(isset($_POST['first']) && isset($_POST['last']) && isset($_POST['addr'])&& isset($_POST['suburb'])&& isset($_POST['state'])&& isset($_POST['country'])&& isset($_POST['email'])) {
        $firstName = $_POST['first'];
        $lastName = $_POST['last'];
        $address = $_POST['addr'];
        $suburb = $_POST['suburb'];
        $state = $_POST['state'];
        $country = $_POST['country'];
        $email = $_POST['email'];
    } else {
        header("refresh:2;contact.php");
        //die("<h1>Form input error, please check it again!</h1>");
        die('<div class="container  vertical-center"><div class="alert alert-danger va-11-box-shadow" role="alert"><strong>System</strong> Form input error, please check it again!.</div></div>');
    }
    //生成购物车内容
    session_start();
    if (isset($_SESSION["cart_items"])) {
        $cartItems = $_SESSION["cart_items"];
        foreach($cartItems as $item) {
            $orderDetails .= $item["item_id"]."\t".$item["item_qty"]."\t".$item["item_name"]."\t".$item["uni_price"]."\t".$item["unit_quantity"]."\n";
        }
        $total = 0;
        foreach ($cartItems as $item) {
            $total += $item["uni_price"] * $item["item_qty"];
        }
        $orderDetails .= "Total: $".$total;
    }

    //发送邮件
    $msg = "Hello $firstName $lastName\nYour purchese is seccuessful,thank you for visiting Grocery Store,we hope you have a pleased shopping!\n[Order Details]:\n$orderDetails\n[Contact Detail]:\nName: $firstName $lastName\nAddress:\n$address\nSuburb:\n$suburb\nState:\n$state\nCountry:\n$country\nEmail:\n$email\n";
    $msg = wordwrap($msg,70);
    mail($email,"Thanks for your purches from Grocery Store",$msg);
    //提示用户发送成功!

    header("refresh:5;cart.php?method=clear");
    //die("<h1>An email is send to $email, thanks for your purches!</h1>");
    session_destroy();
    die('<div class="container  vertical-center"><div class="alert alert-success va-11-box-shadow" role="alert"><strong>System</strong> An email is send to <strong>'.$email.'</strong>, thanks for your purches!</div></div>');
    ?>
</body>
</html>
