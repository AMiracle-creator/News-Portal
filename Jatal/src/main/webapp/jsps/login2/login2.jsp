<%--
  Created by IntelliJ IDEA.
  User: 45
  Date: 30.09.2020
  Time: 22:59
  To change this template use File | Settings | File Templates.
--%>
<div class="login">
    <div class="login__bg">
        <img src="img/login/loin-bg.jpg" alt="" class="login__img">
    </div>

    <div class="login__inner">
        <div class="auth__title">Welcome to Jatal</div>

        <form action="" method="post" class="auth__auth">
            <div class="auth__item">
                <label for="email">Email Address or Username</label>
                <input type="text" id="email" class="auth__email">
            </div>

            <div class="auth__item">
                <label for="password">Password</label>
                <input type="email" id="password" class="auth__email">
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