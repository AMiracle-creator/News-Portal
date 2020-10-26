<div class="login">
    <div class="login__bg">
        <img src="templates/img/login/loin-bg.jpg" alt="" class="login__img">
    </div>

    <div class="login__inner">
        <div class="auth__title">Welcome to Jatal</div>

        <form action="/FinalJatal_war/authorization" method="post" class="auth__auth">
            <div class="auth__item">
                <label for="email">Email Address or Username</label>
                <input type="text" id="email" class="auth__email" name="username"
                       required>
            </div>

            <div class="auth__item">
                <label for="password">Password</label>
                <input type="password" id="password" class="auth__email"
                       required name="password">
            </div>
            <input type = "checkbox" id = "cookie" name="cookie" value = "yes">
            <label for="cookie">Запомнить меня</label>
            <input class="button" type="submit" value="Войти">
        </form>
    </div>
</div>