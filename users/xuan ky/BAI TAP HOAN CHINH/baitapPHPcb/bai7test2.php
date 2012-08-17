
<html>
    <head>
        <title>In Bảng Cửu Chương</title>
        <meta http-equiv="content-type" content="text/html; charset = UTF-8" />
    </head>
<body> 
    <form action="bai7test2.php" method="POST">
    <table align ="center" style="background-color: #0080C0;">
        <tr>
            <td>Nhập số vào:</td>
            <td><input type="text" name="so" value="<?php echo $_POST['so']; ?>" /></td>
            <td><input type="submit" name="in" value="In ra" /></td>
        </tr>
    </table>
    </form>
    <table border=1 align="center"> 

    
    
    <?php
        $so = $_POST['so'];
        if(!isset($so)){
            $so=10;
        }
        
        if($so>10 || $so <1 || is_int($so)) {
            echo "<table border = 1 align ='center'><tr><td>bạn nên nhập số lớn hơn 1 và nhỏ hơn hoặc bằng 10, Số nguyên</td><tr></table>";
        } else{

        for ($i = 1; $i<=$so; $i++) {
            if ($i == 1 || $i == 6) {
                echo "<tr>";
            }
            echo "<td> Bảng cửu chương $i <hr>";            
            for ($j=1; $j <=10; $j++) {
                $kq = $i * $j;
                echo "$i x $j = $kq <br/>";
            }
            echo "</td>";
            if ($i == 5 || $i==$so) {
                echo "</tr>";
            }        
        }
        }
    ?>

    

    </table>

</body>
</html>