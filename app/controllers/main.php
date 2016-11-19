<?php
 class Main extends Controller implements ControllerInterface{

   function index(){
     $data['text'] = "Hello Hung";
     Load::view('main::index',$data);
   }

 }
 ?>
