<div class="group-box">
    <?php
        if(isset($_POST['txtTenDangNhap']))
        {
            $temp = $_POST['txtTenDangNhap'];
        }
    ?> 
    <div class="title">Đăng nhập</div> 
    <div align="center">

        <form action="<?php echo $_SERVER["PHP_SELF"];?>" method="post" name="frmLogin">
            <br>		 
            <table class=frm>
            <tr> 
                    <td align="right"><label for="txtTenDangNhap"> Tên Đăng nhập: </label> </td>
                    <td align="left"><input type="text" name="txtTenDangNhap" placeholder="tên đăng nhập"> </td>
            </tr>
            <tr>
                    <td align="right"> <label for="txtMatKhau"> Mật khẩu: </label></td>
                     <td align="left"> <input type="password" name="txtMatKhau" placeholder="mật khẩu"> <br /> </td>
            </tr>		
            <tr>
                    <td>  &nbsp; </td>				
                    <td> <input type="radio" name="rdodn" value="sv" checked>Sinh Viên 
                             <input type="radio" name="rdodn" value="gv" >Giảng Viên 
                             <input type="radio" name="rdodn" value="ad" >Quản trị 

                     </td>
            </tr>
            <tr>
                    <td> &nbsp; </td> 
                    <td><input type="checkbox" name="chkNhoMK" value=1> Nhớ mật khẩu?  </td>
            </tr>
            <tr>
                    <td> &nbsp; </td> 
                    <td> <button type="submit" name="btnDangNhap" class="btn" >Đăng nhập</button></td>
            </tr>
            </table>		 
            <br><br><br><br><br><br><br><br>
            <?php echo $temp;?>
        </form>	
    </div>
</div>
