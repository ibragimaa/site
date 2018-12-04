<?php
    return array(
        'lesson/([0-9]+)' => 'lesson/view/$1',
        'course/([0-9]+)'=>'course/view/$1',
        'course'=>'site/course',
        'index' => 'site/index',

        'user/register'=>'user/register',
        'user/login' => 'user/login',
        'user/logout'=>'user/logout',

        'cabinet'=>'cabinet/index',

        'contacts' => 'site/contact',

        '' => 'site/index'
    );
