

<!doctype html>
<html>
<head>
  <?php $root_dir = $GLOBALS['config']['path']['basepath']; ?>

  <title>Hệ thống Quản lý đào tạo</title>
  <meta charset="utf-8">
  <meta name="keywords" content="Hệ thống, đào tạo, quản lý, quản lý đào tạo" />
  <meta name="description" content="Hệ thống Quản lý đào tạo - Trường Đại Học Cần Thơ" />
  <link rel="stylesheet" type="text/css" href="/assets/css/style.css"/>
  <link rel="shortcut icon" href="/assets/images/favicon.ico" type="image/x-icon" />
  <script type="text/javascript" src="/assets/js/jquery.js"></script>
  <script type="text/javascript" src="/assets/js/script.js"></script>
  <script type="text/javascript" src="/assets/js/jquery-ui-1.10.2.custom.js"></script>
  <link rel="stylesheet" 	href="/assets/css/ui-lightness/jquery-ui-1.10.2.custom.css" />
  <link rel="stylesheet" 	href="/assets/css/jmetro/jquery-ui-1.10.2.custom.css" />
</head>
<body>
  <div id="pageWrapper">
    <div id="header">
    </div>
    <div id="nav">
      <div  id="menu" >
        <a href="/">Trang chủ</a> |
        <a href="timkiem.php">Tìm kiếm</a>	|
        <a href="gioithieu.php">Giới thiệu</a>
      </div>
      <div  id="login" >
        <?php
        // lấy cookie đăng nhập tự động

        if (Common::is_logged_in()){
          echo "Xin chào ". Session::get('HoTen');
          echo " | <a href='/session/destroy' id='aLogout'>Thoát</a>";
        }else {
          echo "<a href='/session/new'>Đăng nhập</a>";
        }
        ?>
      </div>
    </div> <!-- End of Navigation menu -->
    <?php
    if(Session::get('role'))
    {
      if(Session::get('role') == "ad")
      {
        Load::view('staticpage/ad_menu.php');
      }
      if(Session::get('role') == "sv")
      {
        Load::view('staticpage/sv_menu.php');
      }

    }
    ?>
