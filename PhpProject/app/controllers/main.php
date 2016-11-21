<?php
 class Main extends Controller implements ControllerInterface{

    function index(){
        Load::view('template::header');
        Load::view('main::index');
        Load::view('template::footer');
    }
    function login(){
        Load::view('template::header');
//        $this->check_login();
        Load::view('main::login');
        Load::view('template::footer');
    }
    function show_menu_ad()
    {
        Load::view('admin/menu.php');
    }
    function check_login()
    {
        if(isset($_POST['btnDangNhap']))
        {
            $user = $_POST["txtTenDangNhap"];
            $pass = $_POST["txtMatKhau"];
            $type = $_POST["rdodn"];
            if(type == 'ad')
            {
                if($user == "admin" && $pass == "123")
                {
                    $_SESSION["loggedin"]= true;
                    $_SESSION["User"] = "Admin";
                    $_SESSION["HoTen"] = "Admin";
                    $_SESSION["Type"] = $type;
//                    Url::redir('main::index');
                }
            }
        }
    }
 }
 ?>
