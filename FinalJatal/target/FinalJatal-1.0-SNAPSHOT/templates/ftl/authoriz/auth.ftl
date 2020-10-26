
<div class="login">
    <div class="login__bg">
        <img src="templates/img/login/loin-bg.jpg" alt="" class="login__img">
    </div>

    <div class="login__inner auth__inner">
        <div class="auth__title">Create account</div>

        <form action="/FinalJatal_war/login" method="post" class="auth__auth">
            <div class="auth__item">
                <label for="email">Email Address</label>
                <input type="text" id="email" class="auth__email" name="email">
            </div>

            <div class="auth__item">
                <label for="name">Email Address or Username</label>
                <input type="text" id="name" class="auth__email" name="username">
            </div>

            <div class="auth__item">
                <label for="password">Password</label>
                <input type="password" id="password" class="auth__email" name="password">
            </div>

            <div class="auth__item">
                <label for="password">Repeat password</label>
                <input type="password" id="password" class="auth__email" name="secpassw">
            </div>

            <button type="submit" class="auth__btn">Create</button>
        </form>

    </div>
</div>