
<html>
    <head>
        <title>In Bảng Cửu Chương</title>
        <meta http-equiv="content-type" content="text/html; charset = UTF-8" />
    </head>
<body> 
    <table>
        <tr>
            <td>Nhập số vào:</td>
            <td><input type="text" name="so" value="<?php echo $_POST['so']; ?>" /></td>
            <td><input type="submit" name="in" value="In ra" /></td>
        </tr>
    </table>
    <table border=1 align="center"> 

    
    
    <?php
        $so = $_POST['so'];
        if(isset($so)){
            $so=10;
        }

        for ($i = 1; $i<=$so; $i++) {
            if ($i == 1 || $i == 6) {
                echo "<tr>";
            }
            echo "<td> Bảng cửu chương $i <hr>";            
            for ($j=1; $j <=10; $j++) {
                $kq = $i * $j;
                echo "$j x $i = $kq <br/>";
            }
            echo "</td>";
            if ($i == 5 || $i==$so) {
                echo "</tr>";
            }        
        }
    ?>

    

    </table>

</body>
</html>