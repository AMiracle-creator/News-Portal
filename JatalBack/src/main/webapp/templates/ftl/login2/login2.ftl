
<div class="login">
    <div class="login__bg">
        <img src="img/login/loin-bg.jpg" alt="" class="login__img">
    </div>

    <div class="login__inner">
        <div class="auth__title">Welcome to Jatal</div>

        <form action="" method="post" class="auth__auth">
            <div class="auth__item">
                <label for="email">Email Address or Username</label>
                <input type="email" id="email" class="auth__email" pattern="^[a-z0-9_-]{3,}"
                       required>
            </div>

            <div class="auth__item">
                <label for="password">Password</label>
                <input type="password" id="password" class="auth__email"
                       pattern="^(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{8,}"
                       required>
                <span class="form_error">This field must contain at least 8 characters and at least 1 digit</span>
            </div>

            <div class="auth__item auth__item-remem">
                <div class="auth__remember">
                    <input type="checkbox" class="auth__check">
                    <div class="auth__remember-text">Remember me</div>
                </div>
                <div class="auth__create">
                    <a href="personalcabinet.jsp" type="button" class="auth__btn">Login</a>
                </div>
            </div>
        </form>
    </div>
</div>