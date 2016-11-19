<?php
 class Common{
   static function is_logged_in(){
     $check = array('id', 'username', 'fname', 'lname');
     return Session::check($check) ? true : false;
   }
 }
 ?>
