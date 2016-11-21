<?php 
	// nếu nút Logout được nhấn
	if (isset($_GET["logut"])){
		// hủy bỏ session
		unset($_SESSION["loggedin"]);
		unset($_SESSION["User"]);
		unset($_SESSION["HoTen"]);
		unset($_SESSION["Type"]);
		// xóa cookies
		setcookie("User","",time()-3600);
		setcookie("Password","",time()-3600);
		setcookie("Type","",time()-3600);
		// chuyển đến trang login 
		header("location: login.php");
		exit();
	}
	
	// trong trường hợp đã đăng nhập, chuyển đến trang index
	if(isset($_SESSION["loggedin"])){
		header("location: main/index.php");
		exit();
	} 
		// trường hợp đã nhớ mật khẩu trước đó
		// gọi hàm auto_login() trong thư viện libs/common.php
		// hàm này được gọi trong file header.php để đảm bảo khi truy cập vào
		// trang nào cũng tự đăng nhập, không nhất thiết là vào login.php mới tự đăng nhập
		
		//auto_login();
		 
	 
	
	
	
	
	// trường hợp chưa đăng nhập, không lưu cookie trước đó
	// nếu người dùng nhấn nút "Đăng nhập"
	if (isset($_POST["btnDangNhap"])){
            $user = $_POST["txtTenDangNhap"];
            $pass = $_POST["txtMatKhau"];
            $type = $_POST["rdodn"];
            if($type == "ad")
            {
                if($user == "admin" && $pass == "123")
                {
                    $_SESSION["loggedin"]= true;
                    $_SESSION["User"] = "Admin";
                    $_SESSION["HoTen"] = "Admin";//$row["HoTen"];
                    $_SESSION["Type"] = $type;
                    echo 'PHUCSCS';
//                    header("location: main/index.php");
                }
                else{ // trường hợp nhập username và password không đúng

                        // hiển thị thông báo lỗi, link đến trang đăng nhập lại
                    echo "<div class='error'><br><div align='center'>Tên đăng nhập và mật khẩu không hợp lệ. <br>";
                    echo " <a href='".$_SERVER["PHP_SELF"]."'> Thử lại </a> </div> </div><br>";
                }
            }
            else
            {
                if ($type == "sv"){
                    $sql = "SELECT MSSV as User, HoTen, MatKhau ".
                                " FROM sinhvien WHERE MSSV='".$user."' ".
                                        " AND MatKhau ='".$pass."'";
                }else{
                    $sql = "SELECT MSGV as User, HoTen, MatKhau  ".
                                " FROM giaovien WHERE MSGV='".$user."' ".
                                        " AND MatKhau ='".$pass."'";
                }
                $result = $db->query($sql);
                // nếu xác thực thành công
                if($row = $result->fetch_array()){	
                        // tạo session		 
                    $_SESSION["loggedin"]= true;
                    $_SESSION["User"] = $row["User"];
                    $_SESSION["HoTen"] = $row["HoTen"];
                    $_SESSION["Type"] = $type;

                        // nếu người dùng chọn "Nhớ mật khẩu"
                    if (isset($_POST["chkNhoMK"])){
                            setcookie("User",$row["User"],time()+3600*24 );
                            setcookie("Password",$row["MatKhau"],time()+3600*24);
                            setcookie("Type",$type,time()+3600*24);

                    }
                    header("location: index.php");

                }else{ // trường hợp nhập username và password không đúng

                        // hiển thị thông báo lỗi, link đến trang đăng nhập lại
                        echo "<div class='error'><br><div align='center'>Tên đăng nhập và mật khẩu không hợp lệ. <br>";
                        echo " <a href='".$_SERVER["PHP_SELF"]."'> Thử lại </a> </div> </div><br>";
                }
            }
	}else { // trong trường hợp lần đầu tiên mở form hoặc đã nhấn logout thì hiển thị form đăng nhập	
	?>