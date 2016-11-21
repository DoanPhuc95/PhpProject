<?php session_start();?>
<!doctype html>
<html>
<head>
	
	<?php // require_once($_SERVER['DOCUMENT_ROOT']."/config.php");?>
		
	<?php // 
//		if (!isset($_SESSION["loggedin"])){
//			auto_login();
//		}
	
	?>
	
	<title><?php echo $page_title; ?></title>
	<meta charset="utf-8"> 
	<meta name="keywords" content="<?php echo $page_keywords; ?>" />
	<meta name="description" content="<?php echo $page_description; ?>" />
        <link rel="stylesheet" type="text/css" href="<?php $_SERVER['DOCUMENT_ROOT']?>/css/style.css" />	
	<link rel="shortcut icon" href="<?php $_SERVER['DOCUMENT_ROOT'];?>/favicon.ico" type="image/x-icon" />
        <script type="text/javascript" src="<?php $_SERVER['DOCUMENT_ROOT'];?>/js/jquery.js"></script>
        <script type="text/javascript" src="<?php $_SERVER['DOCUMENT_ROOT'];?>/js/script.js"></script>
        <script type="text/javascript" src="<?php $_SERVER['DOCUMENT_ROOT'];?>/js/jquery-ui-1.10.2.custom.js"></script>
        <link rel="stylesheet" 	href="<?php $_SERVER['DOCUMENT_ROOT'];?>/css/ui-lightness/jquery-ui-1.10.2.custom.css" />
        <link rel="stylesheet" 	href="<?php $_SERVER['DOCUMENT_ROOT'];?>/css/jmetro/jquery-ui-1.10.2.custom.css" /> 
</head>
<body>
    <div id="pageWrapper">
        <div id="header">
        </div>
        <div id="nav"> 
            <div  id="menu" > 
                <a href="index.php">Trang chủ</a> |  
                <a href="#">Tìm kiếm</a>	|
                <a href="#">Giới thiệu</a>		 
            </div>		 
            <div  id="login" > 
            <?php 
                // lấy cookie đăng nhập tự động

                if (isset($_SESSION["loggedin"])){
                    echo "Xin chào ". $_SESSION["HoTen"];
                    echo " | <a href='login.php?logut' id='aLogout'>Thoát</a>";	
                }else {
                    echo "<a href='main/login'>Đăng nhập</a>";
                }
            ?>
            </div>
        </div> <!-- End of Navigation menu --> 
	<?php
//            if(isset($_SESSION["Type"]))
            {
//                if($_SESSION["Type"]=="ad")
//                    echo '/////';
//                    Url::redir ('main::show_menu');
//                if($_SESSION["Type"]=="sv")
                {
//                    require_once 'student/menu.php';
                }
            }
        ?>	