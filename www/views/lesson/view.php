<?php include  ROOT.'/views/layouts/header.php';?>

<!-- content :) KVD//////////////////////////////////////////////////////////////////////////////////////////////////////////////-->

<div class="container">
    <div class="wrapper card">
        <div class="row">
                <div class="col s12 m12 l12 xl12">
                    <div class="lesson-name">
                        <h5><?php echo $lesson['name'];?></h5>
                    </div>
                </div>
                <div class="col s12 m12 l12 xl12">
                    <div class="lesson-text">
                        <p>
                            <?php echo $lesson['text'];?>
                        </p>
                    </div>
                </div>
        </div>
    </div>
</div>

<!-- footer :) //////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->

<?php include  ROOT.'/views/layouts/footer.php';?>