<html>
    <head>
        <title>Bài tập chép phạt</title>
        <meta http-equiv="content-type" content="text/html; charset = UTF-8" />
    </head>
    <body>
    <?php
        if(isset($_POST['so'])) {
        $so = (integer)$_POST['so'];
        }
    ?>
    <form action="bai6.php" method="POST">
        <table align="center" style="background-color: #4F6BDF;">
            <tr>
                <td style="color: #fff;">In bảng cửu chương:</td>
                <td><input type="text" name="so" id="so" maxlength="20" value="<?php echo $_POST['so']; ?>" /></td>
            </tr>
            
            <tr>
                <td colspan="2" align = "center"> <input type="submit" name="nhap" id="nhap" value="In ra" /> </td>
            </tr>
        </table>
        <table align="center" border="1">
            <tr>
                        <td width = "300" colspan="2" align= "center">Bảng cửu chương: <?php echo $so;  ?></td>
            </tr>            
            <?php 
                include "ham_inbangcuuchuong.php";
                inbangcuuchuong($so);
            ?>
        </table>
    </form>        
    </body>
</html>