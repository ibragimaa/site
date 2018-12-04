<?php
/**
 * Created by PhpStorm.
 * User: 314
 * Date: 27.04.2018
 * Time: 10:36
 */

class Router
{
    private  $routes;

    //for read routes
    public function __construct()
    {
        $routesPath = ROOT. '/config/routes.php';
        $this->routes = include($routesPath);
    }

    //Returns request string
    private function getURI()
    {
        if(!empty($_SERVER['REQUEST_URI'])){
            return trim($_SERVER['REQUEST_URI'], '/');
        }
    }

    //analysis of the request and transfer of control

    /**
     *
     */
    public function run(){

        $uri = $this->getURI();
        //Проверить наличие такого запроса в routes.php
        foreach($this->routes as $uriPattern => $path){            if(preg_match("~$uriPattern~", $uri)){

            // Получаем внутренний путь из внешнего согласно правилу
            $interallRoute = preg_replace("~$uriPattern~", $path, $uri);
            // Определить какой контроллер и экшн  обрабатывает запрос
            $segments = explode('/', $interallRoute);


            //Сравниваем
                    $controllerName = array_shift($segments).'Controller';
                    $controllerName = ucfirst($controllerName);

                    $actionName = 'action'.ucfirst(array_shift($segments));

                    $parametrs = $segments;

                    // Подключить файл класса-контроллера
                $controllerFile = ROOT. '/controllers/'.$controllerName.'.php';

                if(file_exists($controllerFile)){
                    include_once($controllerFile);
                }

                //  Создать объект, вызвать метод(action)
                $controllerObject = new $controllerName;
                $result = call_user_func_array(array($controllerObject, $actionName),$parametrs);
                if ($result != null) {
                    break;
                }
            }
        }
    }
}
