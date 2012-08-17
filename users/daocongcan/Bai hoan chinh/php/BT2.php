<!DOCTYPE HTML>
<head>
	<meta http-equiv="content-type" content="text/html" />
	<meta name="author" content="aaaaa" />

	<title>BT2</title>
</head>

<body>
    
   
        
    <?php
       
        $sodien= 60;
        $gia1=550;
        $gia2=1200;
        $gia3=1500;
        
         
        //Tinh tien neu dien 100<-sodien<=150
        $kq2=(100*$gia1)+($gia2*($sodien-100));
        //tinh tien neu dien 150<sodien
        $kq3=(100*$gia1)+($gia2*50)+($gia3*($sodien-150));
        if($sodien<0 ||is_string($sodien))
         echo "Sodien khong duong nhap chu hoac so am ...";
        else 
        {
            
            if($sodien<100)
            {
                echo("<br/>So ki dien: ".$sodien);
                echo("<br/>Tien dien: ".$sodien*$gia1);
            }
            else if($sodien>=100 && $sodien<=150)
            {
                echo("<br/>So ki dien: ".$sodien);
                echo("<br/>Tien dien: ".$kq2);
            }
            else
            {
                echo("<br/>So ki dien: ".$sodien);
                echo("<br/>Tien dien: ".$kq3);
            }
            
        }
       
    ?>


</body>
</html>