<?php
/**
 * Created by PhpStorm.
 * User: 314
 * Date: 02.05.2018
 * Time: 20:28
 */

class User
{

    public static function register($name, $lastName, $email, $password)
    {
        $db = Db::getConnection();

        $sql = 'INSERT INTO users (name, last_name, email, password)' . 'VALUES (:name, :last_name, :email, :password) ';

        $result = $db->prepare($sql);
        $result->bindParam(':name', $name, PDO::PARAM_STR);
        $result->bindParam(':last_name', $lastName, PDO::PARAM_STR);
        $result->bindParam(':email', $email, PDO::PARAM_STR);
        $result->bindParam(':password', $password, PDO::PARAM_STR);

        return $result->execute();
    }

    public static function checkName($name){
        if(strlen($name)>=2){
            return true;
        }
        return false;
    }

    public static function checkLastName($lastName){
        if(strlen($lastName)>=2){
            return true;
        }
        return false;
    }

    public static function checkPassword($password){
        if(strlen($password)>=6){
            return true;
        }
        return false;
    }
    public static function checkEmail($email){
        if(filter_var($email, FILTER_VALIDATE_EMAIL)){
            return true;
        }
        return false;
    }

    public static function checkEmailExists($email){
        $db = Db::getConnection();

        $sql = 'SELECT COUNT(*) FROM users WHERE email = :email';

        $result = $db->prepare($sql);
        $result->bindParam(':email', $email, PDO::PARAM_STR);
        $result->execute();

        if($result->fetchColumn()){
            return true;
        }
        else{
            return false;
        }
    }


    public static  function dataFilter($data){
        $data = strip_tags($data);
        $data = htmlentities($data, ENT_QUOTES, "UTF-8");
        $data = htmlspecialchars($data, ENT_QUOTES);
        return $data;
    }

    public static function checkUserData($email, $password)
    {
        $db = Db::getConnection();

        $sql = 'SELECT * FROM users WHERE email = :email AND password = :password';

        $result = $db->prepare($sql);
        $result->bindParam(':email', $email, PDO::PARAM_INT);
        $result->bindParam(':password', $password, PDO::PARAM_INT);
        $result->execute();

        $user = $result->fetch();
        if($user){
            return $user['id'];
        }

        return false;
    }

    public static function auth($userId)
    {
        $_SESSION['user'] = $userId;
    }

    public static function checkLogged()
    {
        if(isset($_SESSION['user'])){
            return $_SESSION['user'];
        }

        header("Location: /user/login");
    }

    public static function isGuest()
    {
        if(isset($_SESSION['user'])){
            return false;
        }
        return true;
    }
}