<?php
    session_start();
    $_SESSION['error'] = "Bạn vừa thoát khỏi hệ thống";
    header("location: index.php")
    


?>