<?php
 class Model{

   protected $database;

   function __construct(){
     $this->database = new Database();
     $this->database->connect($GLOBALS['config']['database']['host'],
                                 $GLOBALS['config']['database']['username'],
                                 $GLOBALS['config']['database']['password'],
                                 $GLOBALS['config']['database']['name']);
   }

  //  private function 
 }
 ?>
