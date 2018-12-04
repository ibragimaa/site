<?php
require_once ROOT."/models/User.php";

class UserController
{
    public function actionRegister(){
        $name = "";
        $lastName = "";
        $email = "";
        $password = "";
        $result = false;

        $errors = false;

        if(isset($_POST['submit'])){
            $name = $_POST['name'];
            $lastName = $_POST['last_name'];
            $email = $_POST['email'];
            $password = $_POST['password'];

            $name = User::dataFilter($name);
            $lastName = User::dataFilter($lastName);
            $email = User::dataFilter($email);

            if(!User::checkName($name)){
                $errors[] = 'Атыңыз 2 таңбадан кем болмауы қажет';
            }

            if(!User::checkLastName($lastName)){
                $errors[] = 'Тегіңіз 2 таңбадан кем болмауы қажет';
            }

            if(!User::checkPassword($password)){
                $errors[] = 'Пароль 6 таңбадан кем болмауы қажет';
            }

            if(!User::checkEmail($email)){
                $errors[] = 'Поштаңызды дұрыс енгізіңіз';
            }

            if(User::checkEmailExists($email)){
                $errors[] = 'Жазылған пошта тіркелген';
            }

            if ($errors == false){
                $result = User::register($name, $lastName, $email, $password);
            }

        }

        require_once(ROOT . '/views/user/register.php');

        return true;
    }

    public function actionLogin(){

        $email = "";
        $password = "";

        if(isset($_POST['submit'])){
            $email  = $_POST['email'];
            $password = $_POST['password'];
            $email = User::dataFilter($email);

            ;$errors = false;

            if(!User::checkEmail($email)){
                $errors[] = "Дұрыс емес email";
            }

            if(!User::checkPassword($password)){
                $errors[] = "Пароль 6 таңбадан кем болмауы қажет";
            }

            $userId = User::checkUserData($email, $password);

            if($userId == false){
                $errors[] = "Кіру үшін дұрыс емес мәліметтер";
            }
            else{
                User::auth($userId);

                header("Location: /cabinet/");
            }


        }

        require_once(ROOT . '/views/user/login.php');

        return true;
    }

    public static function actionLogout()
    {
        session_start();
        unset($_SESSION['user']);
        header("Location: /");
    }
}