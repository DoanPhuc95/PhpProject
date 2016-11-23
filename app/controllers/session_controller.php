
<?php
class SessionController extends Controller{

  function new(){
    if(Common::is_logged_in()){
      Url::redir('/');
    } else{
      Load::view('/session/new');
    }
  }

  function create(){
    if(Common::is_logged_in()){
      Url::redir('/');
    } else{
      if(Url::post('username') && Url::post('role')){
        $password = Url::post('password') ? Url::post('password') : '';

        if($user = $this->auth(Url::post('username'),$password, Url::post('role'))){
          Session::set('username', $user['username']);
          Session::set('HoTen', $user['HoTen']);
          Session::set('role',Url::post('role'));
          Url::redir('/');
        } else{
          $data = array("error" => "Username or password incorrect.");
          Load::view('/session/new',$data);
        }
      } else{
        Load::view('/session/new');
      }
    }
  }

  function destroy(){
    Session::end_session();
    Url::redir("/");
  }

  private function auth($username, $password, $role){
    $database = new Database();
    $database->connect($GLOBALS['config']['database']['host'],
    $GLOBALS['config']['database']['username'],
    $GLOBALS['config']['database']['password'],
    $GLOBALS['config']['database']['name']);

    if($role == 'ad'){
      if($username == 'admin' && $password == '123'){
        $row = array(
          'username' => 'admin',
          'HoTen'   => 'Admin'
        );
        $database->close();
        return $row;
      } else{
        return false;
      }

    }

    if($role == 'sv'){
      $database->query("SELECT `MSSV` AS `username`,`HoTen` FROM `sinhvien` WHERE `MSSV`=? AND `MatKhau`=?",array($username,$password));
    } else if($role == 'gv'){
      $database->query("SELECT `MSGV` AS `username`,`HoTen` FROM `giaovien` WHERE `MSGV`=? AND `MatKhau`=?",array($username,$password));
    }

    if($row = $database->fetch_assoc()){
      $database->close();
      return $row;
    } else{
      $database->close();
      return false;
    }
  }
}
?>
