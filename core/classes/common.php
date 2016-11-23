<?php
 class Common{
   static function is_logged_in(){
     $check = array('username','HoTen','role');
     return Session::check($check) ? true : false;
   }
 }
 ?>
