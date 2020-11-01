
<div class="latenews">
    <div class="container">
        <div class="latenews__inner">

            <div class="trend__header">
                <div class="trend__title trend__title--popular wow slideInLeft">Latest News</div>
                <div class="trend__line trend__line--popular wow slideInRight"></div>
            </div>

            <div class="popular__content">
                <#macro macros latestPosts>
                    <#list latestPosts as post>
                        <div class="popular__item popular__item-latest wow slideInLeft">
                            <div class="popular__photo">
                                <a href="/FinalJatal_war/post?id=${post.id}">
                                    <img src="templates/img/popular/photo1.jpg" alt="" class="popular__img"></a>
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
                <@macros latestPosts=latestPosts/>
            </div>

            <div class="btn__inner wow bounce">
                <a href="/FinalJatal_war/allposts" class="btn-latest">
                    <div class="btn__text">View More News</div>

                    <svg class="btn__icon-arrow">
                        <use xlink:href="#arrow"></use>
                    </svg>
                </a>
            </div>

        </div>
    </div>
</div>
