<?php $_path = $_SERVER['DOCUMENT_ROOT'].'/PhpProject/';
    require $_path.'header.php';
?>
<?php
    if(isset($_POST['bt_add']))
    {
        
    }
?>
<div class = "group-box">
    <div align="center"> 
        <div class="title">THÊM SINH VIÊN</div>
        <div class="group-box-content">
            <form action="<?php $_SERVER['PHP_SELF']?>" method = 'post' name='form_addStudent'>
                <table class="formInfo"">
                    <tr>
                        <th id="titleform">Mã số sinh viên:</th>
                        <th><input type="text" name='MSSV'/></th>
                    </tr>
                    <tr>
                        <th id="titleform">Họ và tên sinh viên:</th>
                        <th><input type="text" name="name"/></th>
                    </tr>
                    <tr>
                        <th id="titleform">Ngày sinh:</th>
                        <th><input type="date" name='birthday'/></th>
                    </tr>
                    <tr>
                        <th id="titleform" >Giới tính:</th>
                        <th><select>
                                <option value="male">Nam</option>
                                <option value="female">Nữ</option>
                            </select></th>
                    </tr>
                    <tr>
                        <th id="titleform">Quê Quán:</th>
                        <th><input type="text" name='que'/></th>
                    </tr>
                    <tr>
                        <th id="titleform">Khóa học:</th>
                        <th><input type="text" name='khoahoc'/></th>
                    </tr>
                    <tr>
                        <th id="titleform">Khoa/viện:</th>
                        <th><input type="text" name='khoavien'/></th>
                    </tr>
                    <tr>
                        <th id="titleform">Lớp:</th>
                        <th><input type="text" name='lop'/></th>
                    </tr>
                    <tr>
                        <th id="titleform">Hệ:</th>
                        <th><input type="text" name='he'/></th>
                    </tr>
                    <tr></tr>
                    <tr>
                        <th></th>
                        <th><input type="submit" value="Thêm sinh viên" name='bt_add'/></th>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>
<?php require $_path."footer.php"?>