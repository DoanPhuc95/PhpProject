<?php
   class Admin extends Controller{
     function index(){
       if(Common::is_logged_in()){
         Url::redir('/admin/home');
       } else{
         if(Url::post('username') && Url::post('password')){
           $admins = new Admins();
           if($user = $admins->auth(Url::post('username'),Url::post('password'))){
             Session::set('username', $user['username']);
             Session::set('id', $user['id']);
             Session::set('fname', $user['fname']);
             Session::set('lname', $user['lname']);
             Url::redir('/admin/home');
           } else{
             $data = array("error" => "Username or password incorrect.");
             Load::view('admin/login',$data);
           }
         } else{
           Load::view('admin/login');
         }
       }
     }

     function home(){
       if(!Common::is_logged_in()){
         Url::redir("/");
       } else{
         Load::view("admin/home");
       }
     }

     function doLogout(){
       Session::end_session();
       Url::redir("/");
     }
   }
 ?>
