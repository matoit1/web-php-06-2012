
<html>
    <head>
        <title>In Bảng Cửu Chương</title>
        <meta http-equiv="content-type" content="text/html; charset = UTF-8" />
    </head>
<body> 

    <table border=1 align="center"> 
    <tr> 
    <?php
    for ($b=1; $b<6; $b++){
        
        echo "<td>";
        echo "<b>Bảng cửu chương ".$b."</b>";
        echo "</td>";
    }
    
    ?>
    </tr>
    
    <tr> 
    <?php
    for ($b=1; $b<6; $b++){
        
        echo "<td>";
            for($i=1; $i<11; $i++){
            $kq = $b * $i;
            echo $b." x ".$i." = ".$kq."</br>";
        }
        echo "</td>";
    }
    
    ?>
    </tr>
    
    <tr> 
    <?php
    for ($b=6; $b<11; $b++){
        
        echo "<td>";
        echo "<b>Bảng cửu chương ".$b."</b>";
        echo "</td>";
    }
    
    ?>
    </tr>
    
    
    <tr> 
    <?php
    for ($b=6; $b<11; $b++){
        
        echo "<td>";
            for($i=1; $i<11; $i++){
            $kq = $b * $i;
            echo $b." x ".$i." = ".$kq."</br>";
        }
        echo "</td>";
    }
    
    ?>
    </tr>
    </table>

</body>
</html>