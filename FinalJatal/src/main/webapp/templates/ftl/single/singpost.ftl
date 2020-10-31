
<div class="singpost">
    <div class="container">
        <div class="singpost__inner">
            <#macro macros posts>
                <#list posts as post>
                    <div class="singpost__title wow fadeInLeft">${post.title}</div>
                    <div class="singpost__photo wow fadeInRight">
                        <img src="img/popular/photo1.jpg" alt="" class="singpost__img">
                    </div>
                    <div class="singpost__info wow fadeInLeft">
                        <div class="singpost__info-item">${post.date}</div>
                        <div class="singpost__info-item">Jessy Pinkton</div>
                        <div class="singpost__info-item">10 comments</div>
                        <div class="singpost__info-item">100 view</div>
                        <div class="singpost__info-items posts__topic">Design</div>
                    </div>
                    <div class="singpost__text wow fadeInUp">${post.text}
                    </div>

                    <div class="singpost__tags wow fadeInLeft">
                        <div class="singpost__tags-item posts__tags-item">Html</div>
                        <div class="singpost__tags-item posts__tags-item">Css</div>
                        <div class="singpost__tags-item posts__tags-item">Html</div>
                        <div class="singpost__tags-item posts__tags-item">Css</div>
                    </div>

                    <div class="singpost__author">
                        <div class="singpost__author-photo wow fadeInLeft">
                            <img src="img/posts/authorphoto.jpg" alt="" class="singpost__author-img">
                        </div>
                        <div class="singpost__author-content">
                            <div class="singpost__author-name wow fadeInRight">Jenny Preston</div>
                            <div class="singpost__author-about wow fadeInUp">Quisque rutrum. Aenean imperdiet. Etiam ultricies
                                nisi vel
                                augue. Curabitur ullamcorper ultricies nisi.
                            </div>
                            <div>
                                <button type="button" class="singpost__author-subscribe wow fadeInLeft" id="button">Subscribe
                                </button>
                            </div>
                        </div>
                    </div>
                </#list>
            </#macro>
            <@macros posts = posts/>

            <#include "comments.ftl">

        </div>
    </div>
</div>