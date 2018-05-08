<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
     <!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	 crossorigin="anonymous">

	<!-- Optional theme -->
    <link rel="stylesheet" href="https://gta191977649.github.io/bootstrap-va11/scss/main.css">
    <link rel="stylesheet" href="helper.css">
    <title>Contact Form</title>
</head>
<body>
    <?php 
        session_start();
        if (isset($_SESSION["cart_items"])) {
            $cartItems = $_SESSION["cart_items"];
        } else {
            header("refresh:2;cart.php");
            //die("<h2>You do not have item on cart</h2>");
            die('<div class="container vertical-center"><div class="alert alert-warning va-11-box-shadow" role="alert"><strong>System</strong> You do not have item on cart.</div></div>');
        }
        //检测购物车里有没有东西
        if(count($cartItems) == 0) {
            header("refresh:2;cart.php");
            die('<div class="container vertical-center"><div class="alert alert-warning va-11-box-shadow" role="alert"><strong>System</strong> You do not have item on cart.</div></div>');
        }
    ?>
    <div class="container va11-theme-border va-11-box-shadow "style="margin-top:80px; margin-bottom:80px;">
        <h1>Purchase form</h1>
        <hr/>
        <form action="sendMail.php" method="post">
            <div class="form-group">
                <label>First Name</label>
                <input name="first" type="text" class="form-control"  placeholder="First Name" required>
            </div>
            <div class="form-group">
                <label>Last Name</label>
                <input name="last" type="text" class="form-control"  placeholder="Last Name" required>
            </div>
            <div class="form-group">
                <label>Address</label>
                <input name="addr" type="text" class="form-control"  placeholder="Address" required>
            </div>
            <div class="form-group">
                <label>Suburb</label>
                <input name="suburb" type="text" class="form-control"  placeholder="Suburb" required>
            </div>
            <div class="form-group">
                <label>State</label>
                <input name="state" type="text" class="form-control" placeholder="State" required>
            </div>
            <div class="form-group">
                <label>Country</label>
                <input name="country" type="text" class="form-control" placeholder="Country" required>
            </div>
            <div class="form-group">
                <label>Email</label>
                <input name="email" type="email" class="form-control" placeholder="Email" required>
            </div>

            <button type="submit" class="btn btn-primary pull-right">Purchase</button>
        </form>
    </div>
    
</body>
</html>