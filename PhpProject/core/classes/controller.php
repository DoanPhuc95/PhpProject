<?php
class Controller{
  function __construct(){
    $GLOBALS['instances'][] = &$this;
  }
}
 ?>
