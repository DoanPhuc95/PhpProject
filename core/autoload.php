<?php
spl_autoload_register(function($class){
  // $class = strtolower($class);
  $corePath = $GLOBALS['config']['path']['core'];
  $appPath = $GLOBALS['config']['path']['app'];

  $instantiable = false;

  //Search in core path
  if(file_exists("{$corePath}abstracts/{$class}.php")){
    $instantiable = false;
    require_once "{$corePath}abstracts/{$class}.php";
  }else if (file_exists("{$corePath}classes/{$class}.php")) {
    $instantiable = true;
    require_once "{$corePath}classes/{$class}.php";
  }else if (file_exists("{$corePath}interfaces/{$class}.php")) {
    $instantiable = false;
    require_once "{$corePath}interfaces/{$class}.php";

    // And app path
  }else if (file_exists("{$appPath}controllers/".str_replace('Controller','_controller',$class).".php")) {
    $instantiable = true;
    require_once "{$appPath}controllers/".str_replace('Controller','_controller',$class).".php";
  }else if (file_exists("{$appPath}libs/{$class}.php")) {
    $instantiable = true;
    require_once "{$appPath}libs/{$class}.php";
  }else if (file_exists("{$appPath}models/{$class}.php")) {
    $instantiable = true;
    require_once "{$appPath}models/{$class}.php";
  }else if (file_exists("{$appPath}interfaces/{$class}.php")) {
    $instantiable = false;
    require_once "{$appPath}interfaces/{$class}.php";
  }else if (file_exists("{$appPath}abstracts/{$class}.php")) {
    $instantiable = false;
    require_once "{$appPath}abstracts/{$class}.php";
  }

  if($instantiable){
    foreach ($GLOBALS['instances'] as $instance) {
      $instance->$class = new $class();
    }
  }

});

?>
