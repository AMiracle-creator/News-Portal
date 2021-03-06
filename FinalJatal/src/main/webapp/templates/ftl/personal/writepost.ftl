
<div class="cabinet writepost">
    <div class="container">

<#--        <%@include file="cabinet__header.ftl" %>-->
        <#include "cabinet__header.ftl">

        <div class="write__content">
            <div class="pers__allpost-header">
                <div class="pers__allpost-title">Write post</div>
                <div class="pers__allpost-subtitle">your thoughts are a reflection of you</div>
            </div>

            <div class="write__inf">
                <form method="post" enctype="multipart/form-data" action="/FinalJatal_war/writepost">
                    <div class="write__title">
                        <label for="title">Title</label>
                        <input type="text" id="title" class="write__title-field" name="title">
                    </div>

                    <div class="write__photo">
                        <div class="write__photo-block"></div>
                        <div class="write__photo-info">
                            <div class="photo__info-title">Choose title-photo</div>
                            <div class="photo__info-subtitle">if the size is not the default, the photo will automatically
                                adjust to the desired size
                            </div>
                            <div class="helper">
                                <input class="photo__info-btn" type="file" name="photo">Change photo</input>
                            </div>
                        </div>
                    </div>

                    <div class="write__select">
                        <div class="write__topic">Choose topic</div>
                        <select name="topic" id="selectI" class="select">x
                            <option value="Sport" name="value">Sport</option>
                            <option value="Politics" name="value">Politics</option>
                            <option value="Travel" name="value">Travel</option>
                            <option value="Scientific populism" name="value">Scientific populism</option>
                            <option value="Marketing" name="value">Marketing</option>
                            <option value="Weather" name="value">Weather</option>
                            <option value="Rest" name="value">Rest</option>
                            <option value="Health" name="value">Health</option>
                            <option value="About people" name="value">About people</option>
                            <option value="Business" name="value">Business</option>
                            <option value="Books" name="value">Books</option>
                            <option value="Programming" name="value">Programming</option>
                            <option value="Shops" name="value">Shops</option>
                            <option value="News" name="value">News</option>
                            <option value="Technologies" name="value">Technologies</option>
                        </select>

                        <div class="write__tag">Choose tag</div>
                        <div class="write__tag-subtitle">Choose your tags tags are mini topics that other users can find
                            an
                            your article
                        </div>
                        <select name="tag" id="selectId" class="select">
                            <option value="Cars" name="tags">Cars</option>
                            <option value="Weather2020" name="tags">Weather2020</option>
                            <option value="Programs" name="tags">Programs</option>
                            <option value="Landscapes" name="tags">Landscapes</option>
                            <option value="Places" name="tags">Places</option>
                            <option value="Attractions" name="tags">Attractions</option>
                            <option value="Myths" name="tags">Myths</option>
                            <option value="Legends" name="tags">Legends</option>
                            <option value="Stories" name="tags">Stories</option>
                            <option value="Сonversations" name="tags">Сonversations</option>
                            <option value="Stars" name="tags">Stars</option>
                            <option value="Interview" name="tags">Interview</option>
                        </select>
                    </div>

                    <div class="write__text">
                        <label for="text">Text</label>
                        <textarea class="write__tex" name="text" id="text" cols="30" rows="10"></textarea>
                    </div>

                    <div class="write__post">
                        <button class="write__btn" type="submit">Send Post</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>