

<?php

/**
 * @author daocongcan
 * @copyright 2012
 */
    xuLy3(5,5);
    function xuLy3($dong,$cot){
        echo "<table border=1 margin=auto>";
        for($i=1;$i<=$dong;$i++){
            
            for($j=0;$j<=$cot;$j++){                               
                    if($j==0){
                        
                        echo "<tr style=background:black>";
                        
                }else if($j>0 && $j<=$cot){
                                 
                    if($i%2!=0){
                        if($j%2==0)
                            echo "<td width=50px height=50px boder=1 style=background:green>&nbsp;</td>";
                            
                        else
                            echo "<td width=50px height=50px boder=1 style=background:yellow>&nbsp;</td>";
                            
                        }
                   else {
                        if($j%2!=0)
                            echo "<td width=50px height=50px boder=1 style=background:green>&nbsp;</td>";
                        else 
                            echo "<td width=50px height=50px boder=1 style=background:yellow>&nbsp;</td>";
                        }
                        
                   
                }else{
                    echo"</tr>";
                    break;
                  
                }
                
            }
            
        }
        echo"</table>";
    }


?>