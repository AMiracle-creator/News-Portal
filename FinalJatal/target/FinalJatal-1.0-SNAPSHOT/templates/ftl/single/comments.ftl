<div class="comments">
    <div class="comments__title">Comments</div>

    <div class="comments__content">
<#--        <#list comments as coment>-->
<#--            <div class="comments__item">-->
<#--                <div class="comments__info">-->
<#--                    <div class="comments__name">-->
<#--                        ${coment.user.name} ${coment.user.surname}-->
<#--                    </div>-->

<#--                    <div class="commemts__date">${coment.date}</div>-->

<#--                    <div class="comments__text">${coment.text}-->
<#--                    </div>-->
<#--                </div>-->
<#--            </div>-->
<#--        </#list>-->

<#--        <#include "modal.ftl">-->

    </div>

    <form method="post" action="/FinalJatal_war/comment" class="comments__post">
        <div class="comments__post-title">Write comments</div>

        <div class="comments__post-redactor">
            <div class="comments__post-header">
<#--<%--                <div class="comments__post-name">--%>-->
<#--<%--                    <label for="name" class="label__text">Name</label>--%>-->
<#--<%--                    <input type="text" class="input__name" id="name">--%>-->
<#--<%--                </div>--%>-->
<#--<%--                <div class="comments__post-surname">--%>-->
<#--<%--                    <label for="surname" class="label__text">Surname</label>--%>-->
<#--<%--                    <input type="text" class="input__name" id="surname">--%>-->
<#--<%--                </div>--%>-->
            </div>
            <div class="comments__post-text">
                <label for="text" class="label__text">Comment</label>
                <textarea name="text" id="text" class="comment__post-tex"></textarea>
            </div>

            <div class="comments__post-btn">
                <button type="button" class="comments__btn">Post comment</button>
            </div>
        </div>
    </form>

</div>
