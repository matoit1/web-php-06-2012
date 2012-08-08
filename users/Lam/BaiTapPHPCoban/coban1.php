<?php

 $hotenHocsinh=null;
 $diemvan="1";
 $diemtoan="1";
 $diemanh="8";
 $diemtinhoc="2";


 $diemtrungbinh=round((($diemanh+$diemtoan+$diemtoan)*2+$diemtinhoc)/7,3);
 echo($diemtrungbinh).'<br/>';

 $var="XepLoai";

 
 if(
 $diemtrungbinh<=4
 )
 echo $var.'<br/>'. $xeploai="Yeu";
 
 else if (
 $diemtrungbinh>=5 && $diemtrungbinh<6
 )
 echo $var.'<br/>'.$xeploai="TrungBinh";
 
 else if(
 $diemtrungbinh>=6&&$diemtrungbinh<7
 )
 echo $var.'<br/>'.$xeploai="TrungBinhKha";
 
 else if (
 $diemtrungbinh>=7&&$diemtrungbinh<8
 )
echo $var.$xeploai="Kha";
 
 else if ($diemtrungbinh>=8&&$diemtrungbinh<9)
 echo $var.'<br/>'.$xeploai="Kha";
 
 else if (
 $diemtrungbinh>=9&&$diemtrungbinh<10
 ) 
 echo $var.'<br/>'.$xeploai="Xuatsac";
 
 ?>