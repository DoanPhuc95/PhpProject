<?php
class Controller{
  protected $model;

  function __construct(){
    $GLOBALS['instances'][] = &$this;
  }
}
 ?>
