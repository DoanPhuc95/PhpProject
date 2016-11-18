<?php
$token = explode('/',rtrim($_SERVER['REQUEST_URI'],'/'));
echo '<pre>';
print_r($_SERVER);
print_r($token);
echo '</pre>';

$controllerName = ucfirst($token[2]);

require_once('controllers/'.$controllerName);
$controller = new $controllerName;
?>
