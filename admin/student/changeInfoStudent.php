<?php $_path = $_SERVER['DOCUMENT_ROOT'].'/PhpProject/';
    require $_path.'header.php';
?>

<div class = "group-box">
    <div align="center"> 
        <div class="title">SỬA THÔNG TIN SINH VIÊN</div>
        <div class="group-box-content">
            <form>
                <table class="formInfo"">
                    <tr>
                        <th id="titleform">Mã số sinh viên:</th>
                        <th><input type="text"/></th>
                    </tr>
                    <tr>
                        <th id="titleform">Họ và tên sinh viên:</th>
                        <th><input type="text"/></th>
                    </tr>
                    <tr>
                        <th id="titleform">Ngày sinh:</th>
                        <th><input type="date"/></th>
                    </tr>
                    <tr>
                        <th id="titleform">Giới tính:</th>
                        <th><select>
                                <option value="v">Nam</option>
                                <option value="v">Nữ</option>
                            </select></th>
                    </tr>
                    <tr>
                        <th id="titleform">Quê Quán:</th>
                        <th><input type="text"/></th>
                    </tr>
                    <tr>
                        <th id="titleform">Khóa học:</th>
                        <th><input type="text"/></th>
                    </tr>
                    <tr>
                        <th id="titleform">Khoa/viện:</th>
                        <th><input type="text"/></th>
                    </tr>
                    <tr>
                        <th id="titleform">Lớp:</th>
                        <th><input type="text"/></th>
                    </tr>
                    <tr>
                        <th id="titleform">Hệ:</th>
                        <th><input type="text"/></th>
                    </tr>
                    <tr></tr>
                    <tr>
                        <th></th>
                        <th><input type="submit" value="Sửa thông tin"/></th>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>
<?php require $_path."footer.php"?>

