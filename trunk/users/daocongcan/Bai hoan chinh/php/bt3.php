
<?php

/**
 * @author daocongcan
 * @copyright 2012
 */
    xuLy3(5,3);
    function xuLy3($dong,$cot){
        echo "<table border=1>";
        for($i=1;$i<=$dong;$i++){
            for($j=0;$j<=$cot;$j++){
                if($j==0){
                    
                    echo "<tr>";
                    
                }
                else if($j>0 && $j<=$cot){
                    echo "<td width=50px height=50px boder=1>&nbsp;</td>";
                }
                else{
                    echo"</tr>";
                    break;
                  
                }
                
            }
            
        }
        echo"</table>";
    }


?>