<?php
/**
 * Created by PhpStorm.
 * User: 314
 * Date: 30.04.2018
 * Time: 23:12
 */

include_once ROOT . '/models/Lesson.php';
class LessonController
{
    public function actionView($lessonId){

        $lesson = Lesson::getLessonById($lessonId);

        require_once (ROOT. '/views/lesson/view.php');

        return true;
    }


}