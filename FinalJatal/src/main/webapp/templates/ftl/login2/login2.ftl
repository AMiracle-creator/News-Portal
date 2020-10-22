
<div class="login">
    <div class="login__bg">
        <img src="templates/img/login/loin-bg.jpg" alt="" class="login__img">
    </div>

    <div class="login__inner">
        <div class="auth__title">Welcome to Jatal</div>

        <form action="" method="post" class="auth__auth">
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
                    <input type="checkbox" class="auth__check">
                    <div class="auth__remember-text">Remember me</div>
                </div>
                <form class="auth__create" method="post" action="/FinalJatal_war/login">
                    <button type="submit" class="auth__btn">Login</button>
                </form>
            </div>
        </form>
    </div>
</div>