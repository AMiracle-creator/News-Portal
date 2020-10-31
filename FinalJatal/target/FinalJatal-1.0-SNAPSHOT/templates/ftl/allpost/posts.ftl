
<div class="posts">
    <div class="container">
        <div class="posts__inner">
            <div class="posts__content">
                <#macro macros title text date topic>
                    <div class="posts__item wow fadeInUp">
                        <div class="posts__photo">
                            <a href="#">
                                <img src="templates/img/posts/ph1.jpg" alt="" class="posts__img"></a>
                        </div>
                        <div class="posts__item-content">
                            <p><a href="#" class="posts__title posts__title--underline">${title}</a></p>

                            <div class="posts__info">
                                <div class="posts__topic">${topic}</div>
                                <div class="posts__date">${date}</div>
                                <div class="posts__name">Jenny Preston</div>
                                <div class="posts__comments">10 comments</div>
                                <div class="posts__views"> 1000 view</div>
                            </div>

                            <div class="posts__text">${text}
                            </div>
                            <label class="mb">
                                <a class="posts__btn" href="#">Read More</a>
                            </label>
                        </div>
                    </div>
                </#macro>
                <#list posts as post>
                    <@macros title=post.title text=post.text date=post.date topic=post.topic/>
                </#list>
            </div>

            <form method="post" class="posts__search-system" id="post">

                <div class="posts__search">
                    <label>
                        <input type="search" class="posts__search-field" placeholder="Search..."/>
                    </label>
                    <label>
                        <button type="submit" class="searh-btn">Search</button>
                    </label>
                </div>

                <div class="posts__category">
                    <div class="posts__category-title">Categories</div>
                    <div class="posts__category-line"></div>
                </div>

                <select name="select-box" id="selectId" class="select">
                    <option value="Design" name="Design">Design</option>
                    <option value="Travel" name="Travel">Travel</option>
                </select>

                <div class="posts__category">
                    <div class="posts__category-title">Tags</div>
                    <div class="posts__category-line"></div>
                </div>

                <div class="posts__tags">
                    <div class="posts__tags-col">
                        <a href="#" class="posts__tags-item">
                            Html
                        </a>
                        <a href="#" class="posts__tags-item">
                            Css
                        </a>
                    </div>

                    <div class="posts__tags-col">
                        <a href="#" class="posts__tags-item">
                            Css
                        </a>
                        <a href="#" class="posts__tags-item">
                            Html
                        </a>
                    </div>

                </div>
            </form>



        </div>

        <div class="posts__pagination">
            <a href="#" class="posts__pagination-item">1</a>
            <a href="#" class="posts__pagination-item">2</a>
        </div>

    </div>
</div>