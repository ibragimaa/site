/**
 * Created by PhpStorm.
 * User: 314
 * Date: 09.05.2018
 * Time: 13:44
 */
<?php include ROOT . '/views/layouts/header.php';?>
<?php if($result): ?>
    <p>Хаттама жіберілді. Біз сізге осы поштаға жауабын жібереміз</p>
<?php else: ?>
<div class="container contact">
    <div class="row">
        <div class="col s12 m6 offset-m3 l6 offset-l3 xl6 offset-xl3">
            <div class="contact card">
                <div class="modal-content">
                    <div class="row">
                        <form action="#" method="POST" class="col s12">
                            <div class="form-header">
                                <h4 class="form-header-text">Кері байланыс</h4>
                            </div>

                            <div class="row">
                                <div class="input-field col s12">
                                    <input type="email" name="userEmail" placeholder="itrand@gmail.com" value="">
                                    <label>Сіздің поштаңыз</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s12">
                                    <input type="text" name="userText"  placeholder="Хаттама" value="">
                                    <label>Пароль</label>
                                </div>
                            </div>

                            <div class="error-list">
                                <?php if(isset($errors) && is_array($errors)):?>
                                    <ul>
                                        <?php foreach ($errors as $error):?>
                                            <li><?php echo $error;?></li>
                                        <?php endforeach; ?>
                                    </ul>
                                <?php endif;?>
                            </div>

                            <div class="registr-btn">
                                <div class="form-footer">
                                    <input type="submit" name="submit" class="waves-effect waves-light btn" value="Жіберу">
                                </div>
                            </div>

                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<?php endif;?>
<?php include ROOT . '/views/layouts/footer.php';?>

