
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
                <label for="name">Username</label>
                <input type="text" id="name" class="auth__email" name="username" pattern="^[a-z0-9_-]{4,}" required>
                <span>Минимум 4 символа</span>
            </div>

            <div class="auth__item">
                <label for="password">Password</label>
                <input type="password" id="password" class="auth__email" name="password" pattern="^(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{3,}" required>
                <span>Это поле должно содержать минимум 3 символа</span>
            </div>

            <div class="auth__item">
                <label for="password">Repeat password</label>
                <input type="password" id="password" class="auth__email" name="secpassw">
            </div>

            <button type="submit" class="auth__btn">Create</button>
        </form>

    </div>
</div>