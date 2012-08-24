<?php
    include "dbconfig.php";
    function connect(){
        //k?t n?i CSDL
        global $host;        
        global $db;
        global $pass;
        global $user;
        
        $connection = mysql_connect($host, $user, $pass);
        if (!$connection){
            echo "kết nối $host không thành công";
        }
        
        $database = mysql_select_db($db);
        
        if(!$database){
            echo "Kết nối $db không thành công";
        }
        
    }
    
    function disconnect(){
        //ng?t k?t n?i CSDL
        $connection = null;
    }
    
    function executeQuery($sql){
        //hàm th?c thi
        connect();
        $resultset = mysql_query($sql);
        disconnect();
        return $resultset;
    }
    
    function executeNonquery(){
        //th?c thi 3 câu l?nh INSERT, UPDATE, DELETE
        
    }
    


?>