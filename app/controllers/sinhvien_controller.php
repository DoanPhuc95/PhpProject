<?php
  class SinhvienController extends Controller{
    function new(){
      if(Common::is_logged_in() && Session::get('role') == "ad"){
        Load::view('sinhvien/new.php');
      } else {
        Url::redir('/session/new');
      }
    }

    function create(){
      #code
    }

    function edit(){
      if(Common::is_logged_in() && Session::get('role') == "ad"){
        Load::view('sinhvien/edit.php');
      } else {
        Url::redir('/session/new');
      }
    }

    function update(){
      #code
    }

    function change_password(){
      if(Common::is_logged_in() && Session::get('role') == "ad"){
        Load::view('sinhvien/change_password.php');
      } else {
        Url::redir('/session/new');
      }
    }
  }

 ?>
