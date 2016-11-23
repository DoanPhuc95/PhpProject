<?php Load::view('layout/_header.php') ?>

<div class="group-box">

	<div class="title">Đăng nhập</div>
	<div align="center">

  <?php
  if(isset($error)){
    echo "<div class='error'><br><div align='center'>" . $error ."<br></div></div>";
  }
   ?>

	<form action="/session/create" method="post" name="frmLogin">
		<br>
		<table class=frm>
		<tr>
			<td align="right"><label for="txtTenDangNhap"> Tên Đăng nhập: </label> </td>
			<td align="left"><input type="text" name="username" placeholder="tên đăng nhập"> </td>
		</tr>
		<tr>
			<td align="right"> <label for="txtMatKhau"> Mật khẩu: </label></td>
			 <td align="left"> <input type="password" name="password" placeholder="mật khẩu"> <br /> </td>
		</tr>
		<tr>
			<td>  &nbsp; </td>
			<td> <input type="radio" name="role" value="sv" checked>Sinh Viên
				 <input type="radio" name="role" value="gv" >Giảng Viên
				 <input type="radio" name="role" value="ad" >Quản trị

			  </td>
		</tr>
		<tr>
			<td> &nbsp; </td>
			<td><input type="checkbox" name="remember" value=1> Nhớ mật khẩu?  </td>
		</tr>
		<tr>
			<td> &nbsp; </td>
			<td> <button type="submit" name="btnDangNhap" class="btn" >Đăng nhập</button></td>
		</tr>
		</table>
		<br><br><br><br><br>
	</form>
	</div>
</div>

<?php Load::view('layout/_footer.php') ?>
