<?php


//The Router includes all routes
//Can search throught the routes for matching request URI
//
class Router{
  private $routes;

  function __construct(){
    $this->routes = $GLOBALS['config']['routes'];
    $route = $this->find_route();

    // print_r($route);

    if(class_exists($route['controller'])){
      $controller = new $route['controller'];
      if(method_exists($controller,$route['method'])){
        $method = $route['method'];
        $controller->$method();
      } else{
        Errorism::show(404);
      }
    } else{
      Errorism::show(404);
    }
  }

  // break route uri into pieces (Eg: '/home/index' to 'home' and 'index')
  private function route_part($route){
    if(is_array($route)){
      $route = $route['url'];
    }
    $parts = explode('/', $route);
    return $parts;
  }

  // get the uri piece from uri( Eg: uri = /home/kitchen/fork   then uri(1) = 'kitchen')
  static function uri($part){
    $parts = explode('/', $_SERVER['REQUEST_URI']);
    // print_r($_SERVER['REQUEST_URI']);
    if($parts[1] == $GLOBALS['config']['path']['index']){
      $part++;
    }

    return (isset($parts[$part])) ? $parts[$part] : "";
  }


  // Return
  private function find_route(){
    foreach ($this->routes as $route) {
      $parts = $this->route_part($route);
      $allMatch = true;

      foreach ($parts as $key => $value) {
        if($value != '*'){
          if(Router::uri($key) != $value){
            $allMatch = false;
          }
        }
      }
      if($allMatch){
        return $route;
      }
    }

    $uri_1 = Router::uri(1);
    $uri_2 = Router::uri(2);

    if($uri_1 == ""){
      $uri_1 = $GLOBALS['config']['defaults']['controller'];
    }
    if($uri_2 == ""){
      $uri_2 = $GLOBALS['config']['defaults']['method'];
    }

    $route = array(
      'controller' => $uri_1,
      'method'     => $uri_2
    );

    return $route;
  }
}
?>
