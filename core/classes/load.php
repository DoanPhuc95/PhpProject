<?php
  class Load{
    static function view($viewFile, $viewVars = new array()){
      extract($viewVars);
      $viewFileCheck = explode('.',$viewFile);
      if(!isset($viewFileCheck[1])){
        $viewFile .= '.php';
      }
      $viewFile = str_replace('::', '/');
      require_once $GLOBALS['config']['path']['app'] . "views/{$viewFile}";
    }
  }
 ?>
