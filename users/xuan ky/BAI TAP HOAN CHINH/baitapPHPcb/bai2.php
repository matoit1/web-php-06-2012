<html>
	<head>
		<title>thanh toán tiền điện</title>
        <script language="javascript" type="text/javascript">
			function clearTextbox() {
				//alert('ok');
				document.getElementById("ten").value = "";
				document.getElementById("sc").value = "";
				document.getElementById("sm").value = "";				
			}
			function checkInput() {
				var tenChuHo = document.getElementById("ten").value;
				var soCu = document.getElementById("sc").value;
				var soMoi = document.getElementById("sm").value;
				if (tenChuHo == "" || soCu == "" || soMoi == "") {
					alert("Ban hay nhap day du thong tin");
					return false;
				}
				return true;
			}
		</script>
	</head>
	<body>
    	<?php 
			if (isset($_POST['ten'])&& isset($_POST['socu']) && isset($_POST['somoi']))
			{
				$scu = $_POST['socu'];
				$smoi = $_POST['somoi'];
				$ten = $_POST['ten'];
				$kw = $smoi - $scu;
				if ($kw <0){
					$tien = " Số điện mới nhập không hợp lệ";
				}
				elseif ($kw <100){
					$dg = 550;
					$tien = $kw*550;
				}
				elseif($kw <150){
					$tien = 100*550 + ($kw - 100)*1200;
					$dg = "100kw đầu(550đ) <br/>". ($kw - 100)."kw (1200đ)";
				}
				else {
					$tien = 100*550 + 50*1200 + ($kw-150)*1500;
					$dg = "100kw đầu(550đ) - 50kw tt (1200)<br/>".($kw-150)."kw (1500đ)";
				}
		
			}
			else {
			$tien = "Dữ liệu nhập vào bị thiếu";
			}
		?>
		<form action="bai2.php" method="post" onSubmit="return checkInput();">
		<table align="center" style="background-color:#FF6;">	
			<tr>
				<td colspan = 3 align="center" style="background-color:#F60;">TÍNH TIỀN ĐIỆN</td>
			</tr>
			
			<tr>
				<td>tên chủ hộ:</td>
				<td><input name="ten" type="text" id="ten" value="<?php echo $_POST['ten']; ?>"/></td>
				<td></td>
			</tr>
			
			<tr>
				<td>số cũ:</td>
				<td><input name="socu" type="text" id="sc" value="<?php echo $_POST['socu'];?>"/></td>
				<td>kw</td>
			</tr>
			
			<tr>
				<td>số mới:</td>
				<td><input name="somoi" type="text" id="sm" value="<?php echo $_POST['somoi']; ?>"/></td>
				<td>kw</td>
			</tr>
			
			<tr>
				<td>đơn giá:</td>
				<td><?php echo $dg; ?></td>
				<td>đ</td>
			</tr>
			
			<tr>
				<td>số tiền phải trả:</td>
				<td><input name="tien" type="text" id="tt" readonly style="background-color:#CCC;" value="<?php echo $tien; ?>"/></td>
				<td>đ</td>
			</tr>
			
			<tr >
				
				<td colspan = 3 align="center"><input name="tinh" type="submit" id="tính" value="tính tiền"/>
                							<input name="xoa" type="reset" id="xoa" value="xoá" onClick="clearTextbox();"/></td>
				
			</tr>
		</table>
		</form>
	</body>
</html>

