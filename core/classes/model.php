<?php
 class Model{

   protected $database;

   function __construct(){
     $this->database = new Database();

   }

   function connect_db(){
     $this->database->connect($GLOBALS['config']['database']['host'],
                                 $GLOBALS['config']['database']['username'],
                                 $GLOBALS['config']['database']['password'],
                                 $GLOBALS['config']['database']['name']);
   }

   function close_db(){
     $this->database->close();
   }
  //  private function
 }
 ?>
