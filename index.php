<?php
error_reporting(E_ALL);
ini_set('display_errors',1);

$GLOBALS['config'] = array(
  'domain' => ' ',

  'path'   => array(
    'app'  => 'app/',
    'core' => 'core/',
    'index'=> 'index.php'
  ),

  'defaults' => array(
    'controller' => 'main',
    'method'     => 'index'
  ),

  'routes' => array(
      // Each route contains 'url', 'controller', 'method'
  ),

  'database' => array(
    'host'     => 'localhost',
    'username' => '',
    'password' => '',
    'name'     => ''
  )
);

require_once $GLOBALS['config']['path']['core'] . 'autoload.php';

new Router();
?>
