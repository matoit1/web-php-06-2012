<?php 
    session_start();
?>
<html>
    <head>
        <title>Trang Chủ</title>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" type="text/css" href="trangchu.css" />
    </head>
    <body>
        <div id="wrap">
            <div id="header">
            <a href="#">Code more</a>
            <div id="infouser">
                <?php 
                    $name = $_SESSION['userlogin'];
                    echo "xin chào <b> $name |<a href='logoutcontroler.php'>Logout</a></b> ";
                    //unset($_SESSION['userlogin']); 
                ?>
                
            </div>
            </div><!--end header-->
            
            <div id="nav">
                <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">PHP</a>
                <ul>
                    <li><a href="#">link 1</a></li>
                    <li><a href="#">link 2</a></li>
                    <li><a href="#">link 3</a></li>
                    <li><a href="#">link 4</a></li>
                    <li><a href="#">link 5</a></li>
                </ul>
            </li>
            <li><a href="#">MySQL</a></li>
            <li><a href="#">CSS</a>
                <ul>
                    <li><a href="#">link 1</a></li>
                    <li><a href="#">link 2</a></li>
                    <li><a href="#">link 3</a></li>
                    <li><a href="#">link 4</a></li>
                    <li><a href="#">link 5</a></li>
                </ul>
            </li>
            <li><a href="#">Java Scrip</a></li>
            <li><a href="#">HTML</a></li>
            <li><a href="#">Contact</a>
                <ul>
                    <li><a href="#">link 1</a></li>
                    <li><a href="#">link 2</a></li>
                    <li><a href="#">link 3</a></li>
                    <li><a href="#">link 4</a></li>
                    <li><a href="#">link 5</a></li>
                </ul>
            </li>
        </ul>
            </div><!--end nav-->
            
            <div id="content">
                <div id="left">
                    <img src="images/web1.png" alt="hình web1" />
                    <img src="images/web2.png" alt="hình web1" />
                </div><!--end left -->
                
                <div id="right">
                    <div class="text">
                    <h2>Giới thiệu PHP</h2>
                    <p>PHP (viết tắt hồi quy “PHP: Hypertext Preprocessor”) là một ngôn ngữ lập trình kịch bản hay một loại mã lệnh chủ yếu được dùng để phát triển các ứng dụng viết cho máy chủ, mã nguồn mở, dùng cho mục đích tổng quát.
                    Nó rất thích hợp với web và có thể dễ dàng nhúng vào trang HTML. Do được tối ưu hóa cho các ứng dụng web, tốc độ nhanh, nhỏ gọn, cú pháp giống C và Java, dễ học và thời gian xây dựng sản phẩm tương đối ngắn hơn so với các ngôn ngữ khác nên PHP đã nhanh chóng trở thành một ngôn ngữ lập trình web phổ biến nhất thế giới.</p>
                    </div>
                    
                    <div class="text">
                    <h2> Ngôn Ngữ MySQL</h2>
                    <p>MySQL là hệ quản trị cơ sở dữ liệu mã nguồn mở phổ biến nhất thế giới và được các nhà phát triển rất ưa chuộng trong quá trình phát triển ứng dụng. Vì MySQL là cơ sở dữ liệu tốc độ cao, ổn định và dễ sử dụng, có tính khả chuyển, hoạt động trên nhiều hệ điều hành cung cấp một hệ thống lớn các hàm tiện ích rất mạnh.Với tốc độ và tính bảo mật cao, MySQL rất thích hợp cho các ứng dụng có truy cập CSDL trên internet. MySQL miễn phí hoàn toàn cho nên bạn có thể tải về MySQL từ trang chủ. Nó có nhiều phiên bản cho các hệ điều hành khác nhau: phiên bản Win32 cho các hệ điều hành dòng Windows, Linux, Mac OS X, Unix, FreeBSD, NetBSD, Novell NetWare, SGI Irix, Solaris, SunOS, …</p>
                    </div>
                    
                    <div class="text">
                    <h2>HTML ngôn ngữ WEB cần thiết</h2>
                    <p>HTML là viết tắt của cụm từ HyperText Markup Language(Ngôn ngữ đánh dấu siêu văn bản) ,và đây là ngôn ngữ chính được sử dụng cho việc thiết kế các website. Ngôn ngữ này gây ấn tượng cho người ta bởi sự ngắn gọn nhưng lại được hình thành trong một quá trình khó phân định. Việc hình thành HTML có mối quan hệ mật thiết với sự phát triển của Internet. Ngày nay, HTML rất được khuyên dùng  bởi sự xuất hiện của một chuẩn mới, thực tế là một phiên bản cao hơn của ngôn ngữ này như là một sự phát triển tất yếu- HTML5</p>
                    </div>
                </div><!--end right -->
            </div><!--end content-->
            
            <div id="footer">
                <p>&copy; Bản quyền thuộc về PHP code more... </p>
            </div><!--end wrap-->
        </div><!--end wrap-->
    </body>
</html>