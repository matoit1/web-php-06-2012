<html>
    <head>
        <title>Đăng nhập</title>
        <link rel="stylesheet" href="style.css" type="text/css"/>
        <meta http-equiv="content-type" content="text/html; charset = utf-8" />
        <script  language = "javascrip" type="text/javascript">
            function checkinput(){
                var ten = document.getElementById(ten).value;
                var pass = document.getElementById(pass).value;
                if(ten=="" || pass==""){
                    aler ('Bạn hãy nhập đầy đủ thông tin để đang nhập.');
                    return false;
                }
                return true;
            }
        </script>
    </head>
    <body>
        <div id="wrap">
            <div id="header">
                <img src="images/logo.png" />
                <a class="createacc" href="#">Tạo một tài khoản</a>
            </div><!--end header-->
            
            <div id="content">
            
            <div id="info"> 
                <div class="inforhead">
                    <h2 class="maucam">Học Lập trình PHP </h2>
                </div>
                <p>
                PHP là một ngôn ngư lập trình web phía server.<br />
                Trước khi bạn tiếp tục học PHP, bạn nên có một sự hiểu biết về các cơ bản sau đây:<br />
                    * Phải biết HTML<br />
                    * Một số kiến thức scripting<br />
                PHP là gì?<br />
                    * PHP viết tắt của PHP: Hypertext Preprocessor<br />
                    * PHP là một ngôn ngữ lập trình server-side scripting.<br />
                    * PHP script được thực hiện trên máy chủ<br />
                    * PHP hỗ trợ rất nhiều cơ sở dữ liệu (MySQL, Informix, Oracle, Sybase, Solid, PostgreSQL, Generic ODBC, vv)<br />
                    * PHP là một phần mềm mã nguồn mở<br />
                    * PHP là miễn phí để tải về và sử dụng<br />
                Thế nào là một file PHP?<br />
                    * PHP có thể chứa các tập tin văn bản, thẻ HTML và các script<br />
                    * PHP tập tin được trả lại cho trình duyệt như đồng bằng HTML<br />
                    * PHP tập tin có một mở rộng của tập tin. “Php”, “. Php3″, hoặc “. Phtml”<p>
            </div><!--end info-->
            
            
            <div id="signin">
                <form action="" method="POST" onsubmit="checkinput();">
                    <h2><strong class="maucam">Đăng Nhập</strong></h2>
                    <div class="inputbox">
                    <label for="ten">Tên đăng nhập:</label>
                    <input type="text" name="ten" id="ten" value="" />
                    </div>
                    <div class="inputbox">
                    <label for="pass">Mật Khẩu:</label>
                    <input type="password" name="pass" id="pass" value="" /><br /><br />
                    <input type="submit" name="submit" id="submit" value="Đăng nhập" style="width: 100px; height: 25px; text-align: center;" /><br />
                    </div>
                    
                    <div class="inputbox"><a href="#">Quên mật khẩu</a></div>
                </form>
            
            </div><!--end signin-->
            </div><!--end content-->
            <div id="footer">&copy;Học lập trình php-06-2012</div><!--end footer-->
        </div><!--end wrap-->
    
    </body>
</html>