<html>
    <head>
        <title> BT F1</title>
        <style type="text/css" >
            #header{
                display: inherit;
            }
        </style>    
    </head>
    <body>
        <?php
            $soA==-1;
            if(isset($_POST["txtA"])){
                $soA=$_POST["txtA"];
            }
        ?>
        
        <div id="wrapper">
            <form action="F1.php"  method="$Post" name="" >
            <div id="header">
                <p>Bang cuu chuong</p>
                Nhap so : <input type="text" id="txtA" name="txtA" />
            </div>
            <div id="submit">
                <input type="submit" id="subXuat" name="subXuat" value="Xuat" />
            </div>
            </form>
        </div>
    </body>
</html>



<?php





?>