<?php
class GradeController extends Controller{

  function score(){
    if(Common::is_logged_in() && Session::get('role') == "ad"){
      Load::view('grade/score.php');
    } else {
      Url::redir('/session/new');
    }
  }

  function scorestudent(){
    if(Common::is_logged_in() && Session::get('role') == "ad"){
      Load::view('grade/scorestudent.php');
    } else {
      Url::redir('/session/new');
    }
  }
}
 ?>
