
<div class="popular">
    <div class="container">
        <div class="popular__inner">

            <div class="trend__header">
                <div class="trend__title trend__title--popular wow slideInLeft">Most Popular</div>
                <div class="trend__line trend__line--popular wow slideInRight"></div>
            </div>

            <div class="popular__content">
                <#macro macros popularPosts>
                    <#list popularPosts as post>
                        <div class="popular__item wow slideInLeft">
                            <div class="popular__photo">
                                <a href="/FinalJatal_war/post?id=${post.id}">
                                    <img src="/FinalJatal_war/photo?fileName=${post.photo}" alt="" class="popular__img"></a>
                                <label for="topic">
                                    <a href="#" class="popular__topic" id="topic">${post.topic}</a>
                                </label>
                            </div>
                            <p><a href="/FinalJatal_war/post?id=${post.id}" class="popular__title popular__title--underline">${post.title}</a>
                            </p>
                            <div class="popular__text">${post.text}
                            </div>
                            <div class="popular__info">
                                <div class="popular__info-author">by Jenny Preston</div>
                                <div class="popular__info-date">${post.date}</div>
                            </div>
                        </div>
                    </#list>
                </#macro>
                <@macros popularPosts=popularPosts/>
            </div>
        </div>
    </div>
</div>