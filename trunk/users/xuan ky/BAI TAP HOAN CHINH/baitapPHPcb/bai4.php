
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Bài tập kết nối CSDL </title>
    </head>
    <body>
<?php

/**
 * @author xuanky
 * @copyright 2012
 */
    //kết nối CSDL
    $condb = mysql_connect('localhost','root','');
    $db = mysql_select_db('danhbadienthoai');
    //link không tồn tại page nên ta gán cho page giá trị đầu tiên.
    if(!isset($_GET['page'])){
        $_GET['page']=1;
    }
    
    //cong thức tính vị trí hiện tại của trang
    $vitri = ($_GET['page'] - 1)*30;
    // test bien $vitri = 0;
    // câu lệnh lấy record từ CSDL.
    //$kq = mysql_query('select * from sodienthoai oderby sodienthoai.stt ' );
    $kq = mysql_query( "SELECT * FROM `sodienthoai` ORDER BY `sodienthoai`.`stt` ASC limit" ." $vitri,30 ");

    echo     '<table border = "1" align="center">';
    echo        '<tr>
                <td align = "center">STT</td>
                <td align = "center">Họ và Tên</td>
                <td align = "center">Số Điện Thoại</td>
                <td align = "center">Email</td>
            </tr>
            ';
    while ($row = mysql_fetch_assoc($kq))  {
    echo    '
            <tr>
                <td align = "right">'.$row['stt'].'</td>
                <td >'.$row['name'].'</td>
                <td align = "center">'.$row['phonenumber'].'</td>
                <td align = "center">'.$row['email'].'</td>
            </tr>
            ';
            }          
    echo     '</table>';
    
    //test công thức tổng số page.
    $tongsotrang = floor(70/30)+ 1;
    echo "test công thức cho kết quả:" . $tongsotrang;

?>
    
    </body>
</html>
