<?php $_path = $_SERVER['DOCUMENT_ROOT'].'/PhpProject/';
    require $_path.'header.php';
?>
<div class = "group-box">
    <div align="center"> 
        <div class="title">ĐÓNG/MỞ ĐĂNG KÍ HỌC PHẦN</div>
        <div class="group-box-content">
            <form>
                <table class="formInfo">
                    <tr>
                        <th id="titleform">Học kì:</th>
                        <th><input type="text"/></th>
                    </tr>
                    <tr>
                        <th id="titleform">Khoa viện:</th>
                        <th><input type="text"/></th>
                    </tr>
                    <tr>
                        <th id="titleform">Mã học phần:</th>
                        <th><input type="text"/></th>
                    </tr>
                    <tr></tr>
                    <tr>
                        <th></th>
                        <th><input type="submit" value="Tìm kiếm"/></th>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>
<div class = "group-box">
    <div align="center"> 
        <div class="group-box-content">
            <form>
                <table class="formInfo" id="scoretable">
                    <tr id="rowtitle">
                        <th class="colName" id="col5Name"><input type="checkbox"/></th>
                        <th class="colName" id="col6Name">Mã HP</th>
                        <th class="colName" id="col7Name">Tên Học Phần</th>
                        <th class="colName" id="col8Name">Khoa/viện</th>
                        <th class="colName" id="col9Name">Trạng thái</th>
                        <th class="colName" id="col10Name">Đặt Trạng thái</th>
                    </tr>
                    <tr id="rowcell">
                        <td id="col5Name"><input type="checkbox"/></td>
                        <td id="col6Name">IT3201</td>
                        <td id="col7Name">Hệ thống thông tin trên web</td>
                        <td id="col8Name">Viện CNTT</td>
                        <th id="col9Name">Mở</th>
                        <th id="col10Name">ĐÓNG/MỞ</th>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>
<?php require $_path.'footer.php'?>