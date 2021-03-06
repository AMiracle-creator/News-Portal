
<header class="header">
    <div class="container">
        <div class="header__inner">

            <a href="#" class="burger" id="burger">
                <svg class="burger__logo">
                    <use xlink:href="#burger"></use>
                </svg>
            </a>

            <nav class="nav" id="nav">
                <a href="/FinalJatal_war/home" class="nav__link wow fadeInLeft">Home</a>
                <a href="/FinalJatal_war/allposts" class="nav__link wow fadeInLeft">All post</a>
                <div class="nav__link--logo wow fadeInDown">Jatal</div>
                <a href="/FinalJatal_war/about" class="nav__link wow fadeInRight">About</a>
                <a href="/FinalJatal_war/contacts" class="nav__link wow fadeInRight">Contacts</a>
            </nav>

            <div class="header__logo">Jatal</div>
            <#if user??>
<#--                <h1>${user.name}</h1>-->
                <a href="/FinalJatal_war/personalcab"  class="header__auth-text help-text active">Personal cabinet</a>
                <a href="/FinalJatal_war/logout" class="header__auth active" id="logout">
                    <svg class="header__auth-logo">
                        <use xlink:href="#logout"></use>
                    </svg>
                    <div class="header__auth-text">Logout</div>
                </a>
                <#else>
                    <a href="/FinalJatal_war/welcome" class="header__auth active" id="login">
                        <svg class="header__auth-logo">
                            <use xlink:href="#login"></use>
                        </svg>
                        <div class="header__auth-text">Login</div>
                    </a>
            </#if>
        </div>
    </div>
</header>