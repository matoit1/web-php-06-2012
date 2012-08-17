<?php
function inbangcuuchuong ($so){
    if($so>10 || !is_integer($so)){
        echo "  <tr>
                <td>
                số bạn nhập không được lớn hơn 10 và phải là số nguyên. Vui lòng nhập lại!
                </td>
                </tr>";
        return;
  
    }
    
    for($i=1;$i<11;$i++){
        $cc = $so*$i;   
            
        echo    "
                <tr>
                <td width = '300' colspan='2' align= 'center'>".$so." x ". $i." = ". $cc."</td>
                </tr>";
        }
}

?>