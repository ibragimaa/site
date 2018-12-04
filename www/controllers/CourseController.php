<?php
require_once ROOT."/models/Course.php";
require_once ROOT."/models/Lesson.php";

class CourseController
{
    public function actionView($courseId)
    {
        // 01.05.2018 Список уроков
        $courseLessons = array();
        $courseLessons = Lesson::getLessonListByCourse($courseId);

        require_once(ROOT . '/views/course/view.php');

        return true;
    }
}