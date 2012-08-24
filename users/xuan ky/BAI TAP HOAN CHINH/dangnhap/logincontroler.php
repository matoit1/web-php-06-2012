<?php
    session_start();
    include "datautil.php";
    $userlogin = $_POST['ten'];
    $passuser = $_POST['pass'];
    
    $sql = "select * from thongtinthanhvien where ten='$userlogin' and pass = '$passuser'";
    $listuser = executeQuery($sql);
    while ($row = mysql_fetch_array($listuser)){
        
        //login thành công
        $_SESSION['userlogin']= $row['ten'];
        header ("location: trangchu.php");
    }
    
    if (!isset($_SESSION['userlogin'])){
        //login bi thất bại
        $_SESSION['error']= "Đăng nhập không thành công";
        header ("location: index.php");
        
    }

?>