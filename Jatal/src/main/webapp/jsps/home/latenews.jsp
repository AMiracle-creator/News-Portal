<%--
  Created by IntelliJ IDEA.
  User: 45
  Date: 24.09.2020
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<div class="latenews">
    <div class="container">
        <div class="latenews__inner">

            <div class="trend__header">
                <div class="trend__title trend__title--popular wow slideInLeft">Latest News</div>
                <div class="trend__line trend__line--popular wow slideInRight"></div>
            </div>

            <div class="popular__content">
                <%--Возможно цикл но тут два элемента--%>
                <div class="popular__item popular__item-latest wow slideInLeft">
                    <div class="popular__photo">
                        <a href="#">
                            <img src="img/popular/photo1.jpg" alt="" class="popular__img"></a>
                        <label for="topic">
                            <a href="#" class="popular__topic" id="topic">Career</a>
                        </label>
                    </div>
                    <p><a href="#" class="popular__title popular__title--underline">What Keeps Us Going: Find Your Way
                        and Motivation in Life</a>
                    </p>
                    <div class="popular__text">Putting yourself in motion is one of the best ways to find yourself
                        your journey will not become real until you have begun moving in a direction.
                    </div>
                    <div class="popular__info">
                        <div class="popular__info-author">by Jenny Preston</div>
                        <div class="popular__info-date">December 18, 2020</div>
                    </div>
                </div>

                <div class="popular__item popular__item-latest wow slideInUp">
                    <div class="popular__photo">
                        <a href="#">
                            <img src="img/popular/photo2.jpg" alt="" class="popular__img"></a>
                        <label for="top">
                            <a href="#" class="popular__topic" id="top">Career</a>
                        </label>
                    </div>
                    <p><a href="#" class="popular__title popular__title--underline">What Keeps Us Going: Find Your Way
                        and Motivation in Life</a>
                    </p>
                    <div class="popular__text">Putting yourself in motion is one of the best ways to find yourself
                        your journey will not become real until you have begun moving in a direction.
                    </div>
                    <div class="popular__info">
                        <div class="popular__info-author">by Jenny Preston</div>
                        <div class="popular__info-date">December 18, 2020</div>
                    </div>
                </div>

                <div class="popular__item popular__item-latest wow slideInRight">
                    <div class="popular__photo">
                        <a href="#">
                            <img src="img/popular/photo1.jpg" alt="" class="popular__img"></a>
                        <label for="top">
                            <a href="#" class="popular__topic" id="to">Career</a>
                        </label>
                    </div>
                    <p><a href="#" class="popular__title popular__title--underline">What Keeps Us Going: Find Your Way
                        and Motivation in Life</a>
                    </p>
                    <div class="popular__text">Putting yourself in motion is one of the best ways to find yourself
                        your journey will not become real until you have begun moving in a direction.
                    </div>
                    <div class="popular__info">
                        <div class="popular__info-author">by Jenny Preston</div>
                        <div class="popular__info-date">December 18, 2020</div>
                    </div>
                </div>

            </div>
            <div class="btn__inner wow bounce">
                <a href="allpost.jsp" class="btn-latest">
                    <div class="btn__text">View More News</div>

                    <svg class="btn__icon-arrow">
                        <use xlink:href="#arrow"></use>
                    </svg>
                </a>
            </div>

        </div>
    </div>
</div>
