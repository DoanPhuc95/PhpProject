<?php Load::view('layout/_header.php');?>

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
                <table class="formInfo" id="scoretable">
                    <tr id="rowtitle">
                        <th class="colName" id="col1Name" >MSSV</th>
                        <th class="colName" id="col2Name" >Họ tên sinh viên</th>
                        <th class="colName" id="col3Name" >Điểm quá trình</th>
                        <th class="colName" id="col4Name" >Điểm thi</th>
                    </tr>
                    <tr id="rowcell">
                        <td >20132974</td>
                        <td >Doãn Minh Phúc</td>
                        <th ><input type="text"/></th>
                        <th ><input type="text"/></th>
                    </tr>
                </table>
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

<?php Load::view('layout/_footer.php');?>