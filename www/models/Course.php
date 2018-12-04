<?php
/**
 * Created by PhpStorm.
 * User: 314
 * Date: 01.05.2018
 * Time: 0:05
 */

class Course
{
    /**
     * Возвращает массив курсов для списка на сайте
     * @return array <p>Массив с категориями</p>
     */
    public static function getCoursesList()
    {
        // Соединение с БД
        $db = Db::getConnection();

        // Запрос к БД
        $result = $db->query ( 'SELECT id, course_name,image FROM course' . ' ORDER BY sort_order ASC');

        // Получение и возврат результатов
        $i = 0;
        $courseList = array();
        while ($row = $result->fetch()) {
            $courseList[$i]['id'] = $row['id'];
            $courseList[$i]['course_name'] = $row['course_name'];
            $courseList[$i]['image'] = $row['image'];
            $i++;
        }
        return $courseList;
    }

}