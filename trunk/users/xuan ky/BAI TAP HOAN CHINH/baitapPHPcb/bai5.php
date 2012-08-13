<html>
    <head>
        <title>Bài tập chép phạt</title>
        <meta http-equiv="content-type" content="text/html; charset = UTF-8" />
    </head>
    <body>
    <?php
        if(isset($_POST['so'])) {
        $so = $_POST['so'];
        }
    ?>
    <form action="bai5.php" method="POST">
        <table align="center" style="background-color: #4F6BDF;">
            <tr>
                <td style="color: #fff;">Bạn hãy nhập số vào:</td>
                <td><input type="text" name="so" id="so" maxlength="20" value="<?php echo $_POST['so']; ?>" /></td>
            </tr>
            
            <tr>
                <td colspan="2" align = "center"> <input type="submit" name="nhap" id="nhap" value="Ghi ra" /> </td>
            </tr>
        </table>
        <table align="center" border="1">
            <?php 
            for($i=1;$i<($so + 1);$i++){
                
            
            echo    "<tr>
                        <td width = '300' colspan='2' align= 'center'>Dòng ".$i.": Tự học PHP thật là khó</td>
                    </tr>";
                    }
            ?>
        </table>
    </form>        
    </body>
</html>