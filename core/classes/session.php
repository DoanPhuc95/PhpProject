<?php
 class Session{
   function __construct(){
     foreach ($_COOKIE as $key => $value) {
       if(!isset($_SESSION[$key])){
         json_decode($value);
         if(json_last_error() == JSON_ERROR_NONE){
           $_SESSION[$key] = json_decode($value);
         } else{
           $_SESSION[$key] = $value;
         }
       }
     }

   }

   static function check($key){
     if(is_array($key)){
       $set = true;
       foreach ($key as $k) {
         if(!Session::check($k)){
           $set = false;
         }
       }
       return $set;
     } else{
       $key = Session::generate_session_key($key);
       return isset($_SESSION[$key]);
     }
   }

   static function get($key){
     if(isset($_SESSION[Session::generate_session_key($key)])){
       return $_SESSION[Session::generate_session_key($key)];
     } else{
       return false;
     }
   }

   static function set($key, $value , $ttl = 0){
     $_SESSION[Session::generate_session_key($key)] = $value;
     if($ttl !== 0 ){
       if(is_object($value) || is_array($value)){
         $value = json_encode($value);
       }
       setcookie(Session::generate_session_key($key), $value, time() + $ttl, '/', $_SERVER['HTTP_HOST']);
     }
   }

   static function kill($key){
     if(isset($_SESSION[Session::generate_session_key($key)])){
       unset($_SESSION[Session::generate_session_key($key)]);
     }

     if(isset($_COOKIE[Session::generate_session_key($key)])){
       setcookie(Session::generate_session_key($key), '', time() - 5000, '/', $_SERVER['HTTP_HOST']);
     }
   }

   static function end_session(){
     foreach ($_SESSION as $key => $value) {
       unset($_SESSION[$key]);
     }

     foreach ($_COOKIE as $key => $value) {
       setcookie($key, '', time() - 5000, '/', $_SERVER['HTTP_HOST']);
     }

     session_destroy();
   }

   static function generate_session_key($key){
     $append = $GLOBALS['config']['appname'];
     $version = $GLOBALS['config']['version'];
     return md5($key . $append . $version);
   }
 }

 ?>
