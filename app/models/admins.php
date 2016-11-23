<?php
  class Admins extends Model{

    function auth($username, $password){
      $this->database->query("SELECT * FROM `admins` WHERE `username`=? AND `password`=? AND `dFlag`=?",
                          array($username,$password,0));

      if($row = $this->database->fetch_assoc()){
        return $row;
      } else{
        return false;
      }

    }

  }
 ?>
