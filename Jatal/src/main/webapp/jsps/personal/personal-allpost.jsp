<%--
  Created by IntelliJ IDEA.
  User: 45
  Date: 01.10.2020
  Time: 21:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div class="cabinet">
    <div class="cabinet__bg allpost-bg">
        <img src="img/cabinet/bg-cabinet.jpg" alt="" class="cabinet__img">
    </div>
    <div class="container">
        <div class="cabinet__inner">
           <%@include file="cabinet__header.jsp"%>

            <div class="cabinet__content">
                <div class="pers__allpost-header">
                    <div class="pers__allpost-title">All posts</div>
                    <div class="pers__allpost-subtitle">you attract what's inside you</div>
                </div>

                <div class="pers__allpost-inner">
                    <a href="#" class="allpost__item">
                        <div class="allpost__title">What Keeps Us Going: Find Your Way and Motivation in Life</div>
                        <button type="button" class="allpost__btn">Delete</button>
                    </a>

                    <a href="#" class="allpost__item">
                        <div class="allpost__title">What Keeps Us Going: Find Your Way and Motivation in Life</div>
                        <button type="button" class="allpost__btn">Delete</button>
                    </a>

                    <a href="#" class="allpost__item">
                        <div class="allpost__title">What Keeps Us Going: Find Your Way and Motivation in Life</div>
                        <button type="button" class="allpost__btn">Delete</button>
                    </a>

                    <a href="#" class="allpost__item">
                        <div class="allpost__title">What Keeps Us Going: Find Your Way and Motivation in Life</div>
                        <button type="button" class="allpost__btn">Delete</button>
                    </a>
                </div>

                <div class="allpost__pagination">
                    <div class="allpost__pagination-item">
                        <div class="allpost__item-value">1</div>
                    </div>

                    <div class="allpost__pagination-item">
                        <div class="allpost__item-value">2</div>
                    </div>

                    <div class="allpost__pagination-item">
                        <div class="allpost__item-value">3</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
