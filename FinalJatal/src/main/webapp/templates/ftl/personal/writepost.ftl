
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
                <div class="write__title">
                    <label for="title">Title</label>
                    <input type="text" id="title" class="write__title-field">
                </div>

                <div class="write__photo">
                    <div class="write__photo-block"></div>
                    <div class="write__photo-info">
                        <div class="photo__info-title">Choose title-photo</div>
                        <div class="photo__info-subtitle">if the size is not the default, the photo will automatically
                            adjust to the desired size
                        </div>
                        <div class="helper">
                            <button class="photo__info-btn" type="button">Change photo</button>
                        </div>
                    </div>
                </div>

                <div class="write__select">
                    <div class="write__topic">Choose topic</div>
                    <select name="select-box" id="selectI" class="select">
                        <option value="Alcolol" name="Alcolol">Alcolol</option>
                        <option value="Pivo" name="Pivo">Pivo</option>
                    </select>

                    <div class="write__tag">Choose tag</div>
                    <div class="write__tag-subtitle">Choose your tags tags are mini topics that other users can find
                        an
                        your article
                    </div>
                    <select name="select-box" id="selectId" class="select">
                        <option value="Alcolol" name="Alcolol">Alcolol</option>
                        <option value="Pivo" name="Pivo">Pivo</option>
                    </select>
                </div>

                <div class="write__text">
                    <label for="text">Text</label>
                    <textarea class="write__tex" name="text" id="text" cols="30" rows="10"></textarea>
                </div>

                <div class="write__post">
                    <button class="write__btn" type="button">Send Post</button>
                </div>

            </div>
        </div>
    </div>
</div>