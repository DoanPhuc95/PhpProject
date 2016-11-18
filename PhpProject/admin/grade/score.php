<?php $_path = $_SERVER['DOCUMENT_ROOT'].'/PhpProject/';
    require $_path.'header.php';
?>

<div class = "group-box">
    <div align="center"> 
        <div class="title">CẤP NHẬT ĐIỂM CHO LỚP HỌC</div>
        <div class="group-box-content">
            <form>
                <table class="formInfo">
                    <tr>
                        <th id="titleform">Tìm kiếm theo mã lớp:</th>
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
                <table class="formInfo">
                    <tr></tr>
                    <tr>
                        <th></th>
                        <th><input type="submit" value="Cập nhật điểm"/></th>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>
<?php require $_path."footer.php"?>

