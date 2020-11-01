
<div class="posts">
    <div class="container">
        <div class="posts__inner">
            <div class="posts__content">
                <div class="error_search">${error_search}</div>
                <#macro macros posts>
                    <div class="posts__item wow fadeInUp">
                        <div class="posts__photo">
                            <a href="#">
                                <img src="templates/img/about/castle.jpg" alt="" class="posts__img"></a>
                        </div>
                        <div class="posts__item-content">
                            <p><a href="#" class="posts__title posts__title--underline">${posts.title}</a></p>

                            <div class="posts__info">
                                <div class="posts__topic">${posts.topic}</div>
                                <div class="posts__date">${posts.date}</div>
                                <div class="posts__name">Jenny Preston</div>
                                <div class="posts__comments">10 comments</div>
                                <div class="posts__views">${posts.views}</div>
                            </div>

                            <div class="posts__text">${posts.text}
                            </div>
                            <label class="mb">
                                <a class="posts__btn" href="/FinalJatal_war/post?id=${posts.id}">Read More</a>
                            </label>
                        </div>
                    </div>
                </#macro>
                <#list posts as post>
                    <@macros posts=post/>
                </#list>
            </div>
            <#--                        TODO-->
            <form action="/FinalJatal_war/allposts" autocomplete="off" method="post" class="posts__search-system" id="post">
                <#--                        TODO-->
                <div class="posts__category">
                    <div class="posts__category-title">Categories</div>
                    <div class="posts__category-line"></div>
                </div>

                <select name="select-box" id="selectId" class="select">
                    <option value="" name="val">Select category...</option>
                    <option value="Sport" name="val">Sport</option>
                    <option value="Politics" name="val">Politics</option>
                    <option value="Travel" name="val">Travel</option>
                    <option value="Scientific populism" name="val">Scientific populism</option>
                    <option value="Marketing" name="val">Marketing</option>
                    <option value="Weather" name="val">Weather</option>
                    <option value="Rest" name="val">Rest</option>
                    <option value="Health" name="val">Health</option>
                    <option value="About people" name="val">About people</option>
                    <option value="Business" name="val">Business</option>
                    <option value="Books" name="val">Books</option>
                    <option value="Programming" name="val">Programming</option>
                    <option value="Shops" name="val">Shops</option>
                    <option value="News" name="val">News</option>
                    <option value="Technologies" name="val">Technologies</option>
                </select>
                <#--TODO-->
                <div class="autocomplete posts__search ">
                    <label>
                        <input type="search" id="search" name="search" class="posts__search-field" placeholder="Search..."/>
                    </label>
                    <label>
                        <#--                        TODO-->
                        <button type="submit" class="searh-btn">Search</button>
                    </label>
                </div>

                <div class="posts__category">
                    <div class="posts__category-title">Tags</div>
                    <div class="posts__category-line"></div>
                </div>

                <div class="posts__tags">
                    <div class="posts__tags-col">
                        <button value="Cars" name="tag" class="posts__tags-item">
                            Cars
                        </button>
                        <button value="Programs" name="tag" class="posts__tags-item">
                            Programs
                        </button>
                    </div>

                    <div class="posts__tags-col">
                        <button value="Weather2020" name="tag" class="posts__tags-item">
                            Weather2020
                        </button>
                        <button value="Landscapes" name="tag" class="posts__tags-item">
                            Landscapes
                        </button>
                    </div>

                    <div class="posts__tags-col">
                        <button value="Places" name="tag" class="posts__tags-item">
                            Places
                        </button>
                        <button value="Attractions" name="tag" class="posts__tags-item">
                            Attractions
                        </button>
                    </div>

                    <div class="posts__tags-col">
                        <button  value="Myths" name="tag" class="posts__tags-item">
                            Myths
                        </button>
                        <button value="Legends" name="tag" class="posts__tags-item">
                            Legends
                        </button>
                    </div>

                    <div class="posts__tags-col">
                        <button value="Stories" name="tag" class="posts__tags-item">
                            Stories
                        </button>
                        <button value="Сonversations" name="tag" class="posts__tags-item">
                            Сonversations
                        </button>
                    </div>

                    <div class="posts__tags-col">
                        <button value="Stars" name="tag" class="posts__tags-item">
                            Stars
                        </button>
                        <button value="Interview" name="tag" class="posts__tags-item">
                            Interview
                        </button>
                    </div>

                </div>
            </form>



        </div>

        <#--        <div class="posts__pagination">-->
        <#--            <a href="#" class="posts__pagination-item">1</a>-->
        <#--            <a href="#" class="posts__pagination-item">2</a>-->
        <#--        </div>-->

    </div>
</div>