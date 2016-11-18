<?php

function auto_login(){
    $db = $GLOBALS["db"];
    if (isset($_COOKIE["User"]) && isset($_COOKIE["Password"]) && isset($_COOKIE["Type"])){
        $check = false;
        $user = $_COOKIE["User"];
        $pass = $_COOKIE["Password"];
        $type = $_COOKIE["Type"];
        if($type == "ad")
        {
            if(($user == "admin") && ($pass == "123"))
            {
                $_SESSION["loggedin"]= true;
                $_SESSION["User"] = "Admin";
                $_SESSION["HoTen"] = "Admin";
                $_SESSION["Type"] = $type;
                header("location: index.php");
            }
            else
                header("location: ". $_SERVER["PHP_SELF"]);
        }
        else
        {
            if ($type == "sv"){
                $sql = "SELECT MaSV as User, concat(Holot,' ', Ten) as HoTen, MatKhau ".
                                " FROM dbo_sinhvien WHERE MaSV='".$user."' ".
                                " AND MatKhau ='".$pass."'";
            }else{
                $sql = "SELECT MaGV as User, concat(Holot,' ', Ten) as HoTen, MatKhau  ".
                            " FROM dbo_giangvien WHERE MaGV='".$user."' ".
                            " AND MatKhau ='". $pass ."'";
            }
            $result = $db->query($sql);
            if($row = $result->fetch_array())
            {
                // tạo lại session
                $_SESSION["loggedin"]= true;
                $_SESSION["User"] = $row["User"];
                $_SESSION["HoTen"] = $row["HoTen"];
                $_SESSION["Type"] = $type;

                    // đặt lại cookie với thời gian mới
                setcookie("User",$row["User"],time()+3600*24 );
                setcookie("Password",$row["MatKhau"],time()+3600*24);
                setcookie("Type",$type,time()+3600*24);

                header("location: index.php");

            }else{
                    // xác thực không thành công, xóa cookie đã lưu
                setcookie("User","",time()-3600);
                setcookie("Password","",time()-3600);
                setcookie("Type","",time()-3600);
                header("location: ". $_SERVER["PHP_SELF"]);
            }
        }
    }
}
?>