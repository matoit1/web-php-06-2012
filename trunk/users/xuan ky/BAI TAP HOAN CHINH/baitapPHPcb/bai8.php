<html>
    <head>
        <title>vẻ bảng</title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    </head>
    <body>
        <form action="bai8.php" method="post">
            <table align="center" border="1" cellspacing="0" style="background-color: #8000FF;">
                <tr>
                    <td>Nhập số hàng:</td>
                    <td><input type="text" name="hang" id="hang" size="5" value="<?php echo $_POST['hang']; ?>" /></td>
                    <td>Nhập số cột:</td>
                    <td><input type="text" name="cot" id="cit" size="5" value="<?php echo $_POST['cot']; ?>" /></td>
                    <td><input type="submit" name="in" value="In Bảng" /></td>
                </tr>
            </table>
        </form>
        <?php
        
        $hang = $_POST['hang'];
        $cot = $_POST['cot'];
    
            for ($i=1; $i<=$hang; $i++){
                if ($i == 1){
                    echo "<table border ='1' align ='center' cellspacing ='0'>";
                }
                echo "<tr>";
                if($i%2 == 1){
                    for($j=1;$j<=$cot;$j++){
                        if($j%2 == 0){
                            echo "<td width = '20' style ='background-color:yellow;'>&nbsp</td>";
                        }elseif($j%2 == 1){
                            echo "<td width = '20' style ='background-color:red;'>&nbsp</td>"; 
                        }}
                }elseif($i%2 == 0) {
                    for($j=1;$j<=$cot;$j++){
                    if($j%2 == 0){
                            echo "<td width = '20' style ='background-color:red;'>&nbsp</td>";
                    }elseif($j%2 == 1){
                            echo "<td width = '20' style ='background-color:yellow;'>&nbsp</td>"; 
                        }
  
                }}
                
                if($i == $cot){
                echo "</tr>";}
                
                if ($i == $hang){
                    echo "</table>";
                }
            }



        ?>
    </body>
</html>