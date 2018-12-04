<?php
require_once ROOT."/models/Course.php";
require_once ROOT."/models/Lesson.php";
require_once ROOT."/models/User.php";

class SiteController {

    public function actionIndex()
    {
        require_once(ROOT . '/views/site/index.php');
        return true;
    }

    public function actionCourse()
    {
        $courses = array();
        $courses = Course::getCoursesList();

        require_once(ROOT . '/views/site/course.php');
        return true;
    }

    public function actionContact()
    {
        $mail = 'adilkhan.ibragimov@gmail.com';
        $subject = 'Хат тақырыбы';
        $message = 'Хат мазмұны';
        $result = mail($mail, $subject, $message);

        var_dump($result);

        die;
    }
}


