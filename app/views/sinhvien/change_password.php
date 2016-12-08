<?php load::view("layout/_header.php");?>

<div class = "group-box">
  <div align="center">
    <div class="title">Đổi mật khẩu</div>
    <div class="group-box-content">
      <form>
        <table class="formInfo">
          <tr>
            <th id="titleform" >Tài khoản:</th>
            <th><input type="text" readonly="readonly" value="20132373"/></th>
          </tr>
          <tr>
            <th id="titleform">Mật khẩu cũ:</th>
            <th><input type="password"/></th>
          </tr>
          <tr>
            <th id="titleform">Mật khẩu mới:</th>
            <th><input type="password"/></th>
          </tr>
          <tr>
            <th id="titleform">Xác nhận mật khẩu mới:</th>
            <th><input type="password"/></th>
          </tr>
          <tr>
            <th></th>
            <th><input type="submit" value="Cập nhật"/></th>
          </tr>
        </table>
      </form>
    </div>
  </div>
</div>

<?php load::view("layout/_footer.php");?>
