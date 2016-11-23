<?php
error_reporting(E_ALL);
ini_set('display_errors',1);

$GLOBALS['config'] = array(
  'appname'=> 'TheGreatSIS',
  'version'=> '0.0.1',
  'domain' => '127.0.0.1',

  'path'   => array(
    'app'  => 'app/',
    'core' => 'core/',
    'session' => 'app/sessions',
    'basepath' => $_SERVER['DOCUMENT_ROOT'],
    'index' => 'index.php'
  ),

  'defaults' => array(
    'controller' => 'staticpage',
    'method'     => 'home'
  ),

  'routes' => array(
      // Each route contains 'url', 'controller', 'method'
      'staticpage/home',
      'session/new'
  ),

  'database' => array(
    'host'     => '127.0.0.1',
    'username' => 'root',
    'password' => '',
    'name'     => 'thegreatsis'
  )
);

ini_set('session.save_handler', 'files');
ini_set('session.save_path', $GLOBALS['config']['path']['basepath'] . "/" . $GLOBALS['config']['path']['session']);
session_start();
date_default_timezone_set("Asia/Ho_Chi_Minh");
$GLOBALS['instances'] = array();
require_once $GLOBALS['config']['path']['core'] . 'autoload.php';

new Router();
?>
