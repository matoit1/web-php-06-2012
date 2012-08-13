<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
	<?php 
		if(isset($_POST['ten'])){
			$ten = $_POST['ten'];
			$ngay = $_POST['ngay'];
			$thang = $_POST['thang'];
			$ngay = $_POST['nam'];
		}
	?>
	<form action="#" method="post">
	<table style="background-color:#06F;" align="center">
    	<tr>
        	<td colspan="6" align="center" style="background-color:#006; color:#FFF;">Nhập ngày - tháng - năm sinh</td>
        </tr>
    	<tr>
        	<td align="right">Vui lòng nhập tên:</td>
            <td colspan="5"><input name="ten" type="text" id="ten" maxlength="50" value="" size="34%"/>
            </td>
        </tr>
        
        <tr>
        	<td align="right">ngày:</td>
            <td>
				<select name="ngay" id="ngay">
                	
                    <?php
						for($i=1; $i<32; $i++){
							echo "<option value=$i>".$i."</option><br/>";
						}
					?>
                    
                </select>
            </td>
            
            <td>tháng:</td>
            <td>
				<select name="thang" id="thang">
                	 <?php
						for($i=1; $i<13; $i++){
							echo "<option value=$i>tháng ".$i."</option><br/>";
						}
					?>
                </select>
            </td>
            
            <td>Năm:</td>
            <td>
				<select name="nam" id="nam">
                	<?php
						for($i=1930; $i<3000; $i++){
							echo "<option value=$i>Năm ".$i."</option><br/>";
						}
					?>
                </select>
            </td>
        </tr>
        
        <tr>
        	<td colspan="6" align="center">
            	<input name="nhap" type="submit" value="Hiển thị" />
                <input name="xoa" type="reset" value="Xoá"
            </td>
        </tr>
        
    </table>
    </form>
</body>
</html>