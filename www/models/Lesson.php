<?php
/* 01.05.2018 Класс Lesson - модель для работы с уроками
*/
class Lesson
{
    // 01.05.2018 Количество отображаемых уроков по умолчанию
    const SHOW_BY_DEFAULT = 10;

    public static function getLessonListByCourse($courseId = false){
        if($courseId){

            $db = Db::getConnection();

            $lessons=array();

            $result = $db->query("SELECT id, name, image, description, is_new FROM lesson "
                . "WHERE status = '1' AND course_id = '$courseId' "
                . "ORDER BY id DESC "
                . "LIMIT "
                . self::SHOW_BY_DEFAULT);

            // 01.05.2018 Получение и возврат результатов
            $i = 0;

            while ($row = $result->fetch()) {
                $lessons[$i]['id'] = $row['id'];
                $lessons[$i]['name'] = $row['name'];
                $lessons[$i]['image'] = $row['image'];
                $lessons[$i]['description'] = $row['description'];
                $lessons[$i]['is_new'] = $row['is_new'];
                $i++;
            }
            return $lessons;
        }

    }

    public static function getLessonById($id)
    {
        $id = intval($id);

        if($id){
            $db = Db::getConnection();

            $result = $db->query('SELECT * FROM lesson WHERE id= ' . $id);

            return $result->fetch();
        }
    }
}
