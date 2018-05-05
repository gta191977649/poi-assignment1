<?php
    include("config.inc.php");
    $conn = mysqli_connect(DB_HOST,DB_USR,DB_PWD,DB_NAME);
    
    if($conn == NULL) die ("DB Connection fail!");
    //else echo "DB CONN OK!";
?>