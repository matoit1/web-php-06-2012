<html>
    <head>
        <title> BT F2</title>
        <style  type="text/css" >
            #header{
                display: inherit;
            }
            #content{
                width: 100%;
                height: 900px;
                display: block;
            }
        </style>    
    </head>
    <body>
        <?php
            $soA = -1;
            if(isset($_POST["txtA"])){
                $soA=$_POST["txtA"];
            }
        ?>
        
        <div id="wrapper">
            <form action="bs.php"  method="POST" name="frmCuuChuong" >
            <div id="header">
                <p>Bang cuu chuong</p>
                Nhap so : <input type="text" id="txtA" name="txtA" value="<?php
                    if($soA != "-1"){
                        echo $soA;
                    }
                    
                ?>" />
            </div>
            <div id="submit">
                <input type="submit" id="subAction" name="btnAction" value="Action" />
            </div>
            <div id="content">
                <?php
                        xuLy3($soA);
                ?>
            </div>
            </form>
        </div>
    </body>
</html>



<?php
?>
<?php
    function xuLy3($x){
        echo "<table border=1 margin=auto width:1024px height:500px>";
        for($i=1;$i<=1;$i++){
            echo "<tr width:1024px height:250px >";
            for($j=1;$j<=$x;$j++){                    
                for($k=0;$k<=10;$k++){
                    if ($k==0)                         
                        echo "<td width=75px height=100% >";
                    else if($k<=10){
                        if($j<5)
                            echo "   $j x $k = ".$i*$k."<br/>";
                        else if($j==($x/($x/5))){
                            if($k<=9)
                                echo "   $j x $k = ".$i*$k."<br/>";
                            else if ($k==10)
                                echo "   $j x $k = ".$i*$k."</td></tr>";
                                }
                        else if($j>5 && $j<=$x)
                            echo "   $j x $k = ".$i*$k."<br/>";
                        }
                    }     
                }
           }
        echo"</table>";
    }


?>


