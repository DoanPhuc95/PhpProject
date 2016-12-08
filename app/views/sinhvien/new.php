<?php Load::view('layout/_header.php');?>

<div class = "group-box">
  <div align="center">
    <div class="title">Cap nhat thong tin</div>
    <div class="group-box-content">
      <form>
        <table class="formInfo">
          <tr>
            <th id="titleform">MSSV:</th>
            <th><input type = "text"/></th>
          </tr>
          <tr>
            <th id="titleform">Họ tên SV:</th>
            <th><input type = "text"/></th>
          </tr>
          <tr>
            <th id="titleform">Ngày sinh: </th>
            <th><input type = "date"/></th>
          </tr>
          <tr>
            <th id="titleform">Lớp:</th>
            <th><span class="titleform">Viet nhat 8B</span></th>
          </tr>
          <tr>
            <th id="titleform">Email:</th>
            <th><input type="text"/></th>
          </tr>
          <tr>
            <th id="titleform">Quê quán:</th>
            <th><input type="text"/></th>
          </tr>
          <tr>
            <th id="titleform">Hệ học: </th>
            <th><span class="titleform">Dai hoc</span></th>
          </tr>
          <tr>
            <th></th>
            <th><input type="submit" value="Thêm sinh viên"/></th>
          </tr>
        </table>
      </form>
    </div>
  </div>
</div>

<?php Load::view('layout/_footer.php');?>
