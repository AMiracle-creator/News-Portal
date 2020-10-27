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
            <div class="auth__item auth__item-remem">
                <div class="auth__remember">
                    <input type="checkbox" id="cookie" name="cookie" class="auth__check">
                    <div class="auth__remember-text">Запомнить меня</div>
                </div>
                <div class="auth__create">
                    <button type="submit" class="auth__btn">Login</button>
                </div>
            </div>
<#--            <div class="auth_item">-->
<#--                <input type = "checkbox" id="cookie" name="cookie" value = "yes">-->
<#--                <label for="cookie">Запомнить меня</label>-->
<#--            </div>-->
<#--            <button class="button" type="submit">Войти</button>-->
        </form>
    </div>
</div>