<%--
  Created by IntelliJ IDEA.
  User: 45
  Date: 23.09.2020
  Time: 9:32
  To change this template use File | Settings | File Templates.
--%>
<div class="popular">
    <div class="container">
        <div class="popular__inner">

            <div class="trend__header">
                <div class="trend__title trend__title--popular wow slideInLeft">Most Popular</div>
                <div class="trend__line trend__line--popular wow slideInRight"></div>
            </div>

            <div class="popular__content">
                <%--Возможно цикл но тут два элемента--%>
                <div class="popular__item wow slideInLeft">
                    <div class="popular__photo">
                        <a href="singlepost.jsp">
                            <img src="img/popular/photo1.jpg" alt="" class="popular__img"></a>
                        <label for="topic">
                            <a href="#" class="popular__topic" id="topic">Career</a>
                        </label>
                    </div>
                    <p><a href="singlepost.jsp" class="popular__title popular__title--underline">What Keeps Us Going: Find Your Way
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

                <div class="popular__item wow slideInRight">
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

            </div>

        </div>
    </div>
</div>