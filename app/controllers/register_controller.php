<?php
class RegisterController extends Controller{

  function managesubject(){
    if(Common::is_logged_in() && Session::get('role') == "ad"){
      Load::view('register/managesubject.php');
    } else {
      Url::redir('/session/new');
    }
  }

  function manageclass(){
    if(Common::is_logged_in() && Session::get('role') == "ad"){
      Load::view('register/manageclass.php');
    } else {
      Url::redir('/session/new');
    }
  }
}
 ?>
