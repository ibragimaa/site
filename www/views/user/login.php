<?php include ROOT . '/views/layouts/header.php';?>
<div class="container login">
    <div class="row">
        <div class="col s12 m6 offset-m3 l6 offset-l3 xl6 offset-xl3">
            <div class="login card">
                <div class="modal-content">
                    <div class="row">
                        <form action="#" method="POST" class="col s12">
                            <div class="form-header">
                                <h4 class="form-header-text">Авторизация</h4>
                            </div>

                            <div class="row">
                                <div class="input-field col s12">
                                    <input type="text" name="email" placeholder="itrand@gmail.com" value="">
                                    <label>Email</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s12">
                                    <input type="password" name="password" class="password" placeholder="Пароль" value="">
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
                                    <input type="submit" name="submit" class="waves-effect waves-light btn" value="Кіру">
                                </div>
                            </div>

                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<?php include ROOT . '/views/layouts/footer.php';?>
