<?php include ROOT . '/views/layouts/header.php';?>

<!-- card lessons -->

<?php foreach ($courseLessons as $lesson): ?>

    <div class="container">
        <div class="card hoverable small">
            <div class="card-image">
                <img src="/template/images/<?php echo $lesson['image']?>" alt=""/>
                <span class="card-title">
                    <h4>
                        <?php echo $lesson['name']?>
                    </h4>
                </span>
            </div>
            <div class="card-content">
                <p>
                    <?php echo $lesson['description']?>
                </p>
            </div>
            <div class="card-action">
                <a href="/lesson/<?php echo $lesson['id']?>" class="btn waves-effect waves-blue" >ОҚУ</a>
            </div>
        </div>
    </div>

<?php endforeach; ?>

<?php include ROOT . '/views/layouts/footer.php';?>
