<!DOCTYPE HTML>
<head>
	<meta http-equiv="content-type" content="text/html" />
	<meta name="author" content="aaaaa" />

	<title>BT1</title>
</head>

<body>
    
    
    <?php
       /* echo "Hello PHP<br/>";
        
        $ten="Nguyen Van A";
        $diemV=7;
        
        echo"Ten thi sinh : ". $ten ."Diem V : ".$diemV;
        echo"<br>";
        $a=5;$b=5;
        $kq=($a+$b)/5;
        echo"Diem trung binh la : " .$kq;*/
        echo"<br/>";
        
        $hoten="Nguyen Van A";
        $toan=5;
        $av=9;
        $van=9;
        $tin=7;
        
        
        $kq=($toan+$av+$van+$tin)/4;
        echo "";
        echo "<br/>Toan= ".$toan."; Van= ".$van. "; Tin= ".$tin."; AV= ".$av."<br/>";
        echo "";
        if($toan<0||$av<0||$van<0||$tin<0 || $toan>10||$av>10||$van>10||$tin>10 || is_string($toan)||is_string($van)||is_string($av)||is_string($tin))
            echo "Kiem tra lai diem ....";
        else if($kq<5){
            echo "Diem truong binh: ";
            printf("%.2f",$kq);
            echo("<br/>Sinh vien :".$hoten."<br/>  Loai: Yeu");
        }
        else if($kq<6){
            echo "Diem truong binh: ";
            printf("%.2f",$kq);
            echo("<br/>Sinh vien :".$hoten."<br/>  Loai: TB");
        }
        else if($kq<7){
            echo "Diem truong binh: ";
            printf("%.2f",$kq);
            echo("<br/>Sinh vien :".$hoten."<br/>  Loai: TBKha");
        }
        else if($kq<8){
            echo "Diem truong binh: ";
            printf("%.2f",$kq);
            echo("<br/>Sinh vien :".$hoten."<br/>  Loai: Kha");
        }
        else if($kq<9){
            echo "Diem truong binh: ";
            printf("%.2f",$kq);
            echo("<br/>Sinh vien :".$hoten."<br/>  Loai: Gioi");
        }
        else{
            echo "Diem truong binh: ";
            printf("%.2f",$kq);
            echo("<br/>Sinh vien :".$hoten."<br/>  Loai: Xuat sac");
        }
        
        
    ?>


</body>
</html>