
<div class="singpost">
    <div class="container">
        <div class="singpost__inner">
            <#macro macros posts>
                <#list posts as post>
                    <div class="singpost__title wow fadeInLeft">${post.title}</div>
                    <div class="singpost__photo wow fadeInRight">
<#--                        FinalJatal_war/photo?fileName=${post.photo}-->
                        <img src="/FinalJatal_war/photo?fileName=${post.photo}" alt="" class="singpost__img">
                    </div>
                    <div class="singpost__info wow fadeInLeft">
                        <div class="singpost__info-item">${post.date}</div>
                        <div class="singpost__info-item">Jessy Pinkton</div>
                        <div class="singpost__info-item">${post.views} views</div>
                        <div class="singpost__info-items posts__topic">${post.topic}</div>
                    </div>
                    <div class="singpost__text wow fadeInUp">${post.text}
                    </div>

                    <div class="singpost__tags wow fadeInLeft">
                        <div class="singpost__tags-item posts__tags-item">${post.tag}</div>
                    </div>

                    <div class="singpost__author">
                        <div class="singpost__author-photo wow fadeInLeft">
                            <img src="img/posts/authorphoto.jpg" alt="" class="singpost__author-img">
                        </div>
                        <div class="singpost__author-content">
                            <div class="singpost__author-name wow fadeInRight">Jenny Preston</div>
                            <div>
                                <#if user??>
                                <form method="post" action="/FinalJatal_war/post?id=${post.id}">
                                    <button type="submit" class="singpost__author-subscribe wow fadeInLeft" id="button">likes ${post.likes}</button>
                                </form>
                                <#if errMsg??>
                                    <br>
                                    <a>You have already liked</a>
                                </#if>
                            </div>
                        </div>
                        <#else>
                        <br>
                        <a href="/BarBookOriginal_war/auth" class="stat__like">To like  log in.</a>
                        </#if>
                    </div>
                </#list>
            </#macro>
            <@macros posts=posts/>

            <#include "comments.ftl">

        </div>
    </div>
</div>