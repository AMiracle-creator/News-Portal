
<html>
<head>
    <title>Title</title>
</head>
<body>

<div class="cabinet">
    <div class="cabinet__bg allpost-bg">
        <img src="templates/img/cabinet/bg-cabinet.jpg" alt="" class="cabinet__img">
    </div>
    <div class="container">
        <div class="cabinet__inner">
<#--           <%@include file="cabinet__header.ftl"%>-->
            <#include "cabinet__header.ftl">

            <div class="cabinet__content">
                <div class="pers__allpost-header">
                    <div class="pers__allpost-title">All posts</div>
                    <div class="pers__allpost-subtitle">you attract what's inside you</div>
                </div>

                <div class="pers__allpost-inner">
                    <#macro macros posts>
                        <#list posts as post>
                        <div class="allpost__item">
                            <a href="/FinalJatal_war/post?id=${post.id}" class="allpost__title">${post.title}</a>
                            <a href="/FinalJatal_war/delete?id=${post.id}">
                                <button type="submit" class="allpost__btn">Delete</button>
                            </a>
                        </div>
                        </#list>
                    </#macro>
                    <@macros posts = posts/>
<#--                    <#list posts as post>-->
<#--                        <@macros title = posts/>-->
<#--                    </#list>-->
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
