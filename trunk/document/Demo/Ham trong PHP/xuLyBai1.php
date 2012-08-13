<?php

/**
 * @author ThienVD
 * @copyright 2012
 */
    
    
    function xuLyThuatToan1a($n, $valueString) {
        echo "<table border=1>";
        for ($i = 1; $i <= $n; $i++) {
            echo "<tr><td>Dong $i: $valueString</td></tr>";
        }
        echo "</table>";
    }
    
    function xuLyThuatToan1B($from, $to, $flag) {
        // flag = 0: chan, flag=1: so le
        for ($i = $from; $i <= $to; $i++) {
            if ($flag != 0 && $flag != 1) {
                echo "Flag chi duoc nhan 2 gia tri 0 hoac 1";
                return;
            }
            //if (is_integer($from)== false || is_integer($to) == false) {
              if (!is_integer($from) || !is_integer($to)) {  
                echo '$from & $to khong duoc la so thuc';
                return;
            }
            if ($flag == 0 && $i%2 == 0) {
                echo "$i: la so chan <br/>";
            }
            if ($flag == 1 && $i%2 == 1) {
                echo "$i: la so le <br/>";
            }
        }
    }
    
?>