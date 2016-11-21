<?php
    class Admins extends Model{

    function auth($username, $password){
        $this->model->query("SELECT * FROM `admins` WHERE `username`=? AND `password`=? AND `dFlag`=?",
                          array($username,$password,0));

      if($row = $this->model->fetch_assoc()){
        return $row;
      } else{
        return false;
      }
    }
    
    function select_query($query)
    {
        $this->model->query($query);
        if($row = $this->model->fetch_assoc())
        {
            return $row;
        }
        else{
            return false;
      }
    }

  }
 ?>
