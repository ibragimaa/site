<?php include ROOT . '/views/layouts/header.php';?>
<div class="container">
<!--  contextual-advertising -->
    <div class="container">
        <div class="row">
            <div class="col contextual-advertising s12">

            </div>
        </div>
    </div>
<!--  courses -->
    <div class="row">
        <?php foreach ($courses as $courseItem): ?>
            <div class="col s12 xl4 l6 m6 course">
                <div class="card hoverable small">
                    <div class="card-image">
                        <img src="/template/images/<?php echo $courseItem['image']?>" alt=""/>
                    </div>
                    <div class="card-content">
                    <span class="card-title">
                        <h6>
                            <?php echo $courseItem['course_name']; ?>
                        </h6>
                    </span>
                    </div>
                    <div class="card-action">
                        <a href="/course/<?php echo $courseItem['id']; ?>">Оқу</a>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
</div>
<?php include ROOT . '/views/layouts/footer.php';?>

