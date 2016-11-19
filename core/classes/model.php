<?php
 class Model{

   public $model;

   function __construct(){
     $this->model = new Database();
     $this->model->connect($GLOBALS['config']['database']['host'],
                                 $GLOBALS['config']['database']['username'],
                                 $GLOBALS['config']['database']['password'],
                                 $GLOBALS['config']['database']['name']);
   }
 }
 ?>
