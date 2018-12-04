<?php
/**
 * Created by PhpStorm.
 * User: 314
 * Date: 06.05.2018
 * Time: 23:37
 */
require_once ROOT."/models/User.php";

class CabinetController
{
    public  static function actionIndex()
    {
        $userId = User::checkLogged();
        require_once(ROOT . '/views/cabinet/index.php');
        return true;
    }
}