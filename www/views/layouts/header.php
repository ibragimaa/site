<?php
header("Content-Type: text/html; charset=utf-8");
require_once ROOT."/models/User.php";
?>

<!DOCTYPE html>

<html>
<head>
    <title>Басты бет</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="/template/css/normalize.css"/>
    <link rel="stylesheet" href="/template/materialize/css/materialize.min.css"/>
    <link rel="stylesheet" href="/template/css/style.css"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

</head>
<body>
<!-- navbar -->

<div class="navbar-fixed">
    <nav>
        <div class="nav-wrapper">
            <div class="container">
                <a href="/" class="brand-logo">
                    iTrand
                </a>
                <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
                <ul class="right hide-on-med-and-down">
                    <li><a href="/">Басты</a></li>
                    <li><a href="/course">Курстар</a></li>
                    <li><a href="/blog">Блог</a></li>
                    <?php if(User::isGuest()):?>
                    <li><a href="/user/login">Кіру</a></li>
                    <li><a href="/user/register">Тіркелу</a></li>
                    <?php else: ?>
                    <li><a href="/cabinet/">Аккаунт</a></li>
                    <li><a href="/user/logout">Шығу</a></li>
                    <?php endif; ?>
                </ul>
                <ul class="side-nav" id="mobile-demo">
                    <li><a href="/">Басты</a></li>
                    <li><a href="/course">Курстар</a></li>
                    <li><a href="/blog">Блог</a></li>
                    <?php if(User::isGuest()):?>
                        <li><a href="/user/login">Кіру</a></li>
                        <li><a href="/user/register">Тіркелу</a></li>
                    <?php else: ?>
                        <li><a href="/cabinet/">Аккаунт</a></li>
                        <li><a href="/user/logout">Шығу</a></li>
                    <?php endif; ?>
                </ul>
            </div>
        </div>
    </nav>
</div>