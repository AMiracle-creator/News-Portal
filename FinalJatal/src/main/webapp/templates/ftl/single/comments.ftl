<div class="comments">
    <div class="comments__title">Comments</div>

    <div class="comments__content">

        <div class="comments__item">
            <div class="comments__photo">
                <img src="img/comments/prof.jpeg" alt="" class="comments__img">
            </div>

            <div class="comments__info">
                <div class="comments__name">
                    Roman Leontiev
                </div>

                <div class="commemts__date">November 01.2020 12:45</div>

                <div class="comments__text">bmrfbmdfvddlNullam eget tincidunt dolor, at accumsan odio. Morbi eget ligula
                    gravida,
                    pulvinar magna eget, eleifend mi. Proinfdghkjkmllvmflvdvmldfmvdvdlvdlvdlvmdvmmvdovdmvodvmmdvdmvodmv
                    eefdghjk
                    gsdgsdgsdgsgsgsdgsdggsdggs
                </div>
                <div class="comments__reply">
                    <button type="button" class="comments__reply-btn" data-toggle="modal" data-target="#staticBackdrop">
                        Reply
                    </button>
                </div>
            </div>
        </div>

        <div class="comments__item">
            <div class="comments__photo">
                <img src="img/comments/prof.jpeg" alt="" class="comments__img">
            </div>

            <div class="comments__info">
                <div class="comments__name">
                    Roman Leontiev
                </div>

                <div class="commemts__date">November 01.2020 12:45</div>

                <div class="comments__text">bmrfbmdfvddlNullam eget tincidunt dolor, at accumsan odio. Morbi eget ligula
                    gravida, pulvinar magna eget, eleifend mi. Proinfdghkjkmllvmflvdvmldfmvdvdlvdlvdlvmdvmmvdovdmvodvmmdvdmvodmv eefdghjk gsdgsdgsdgsgsgsdgsdggsdggs
                </div>
                <div class="comments__reply">
                    <button type="button" class="comments__reply-btn" data-toggle="modal" data-target="#staticBackdrop">
                        Reply
                    </button>
                </div>
            </div>
        </div>

        <div class="comments__item act">
            <div class="comments__photo">
                <img src="img/comments/prof.jpeg" alt="" class="comments__img">
            </div>

            <div class="comments__info">
                <div class="comments__name">
                    Roman Leontiev
                </div>

                <div class="commemts__date">November 01.2020 12:45</div>

                <div class="comments__text">bmrfbmdfvddlNullam eget tincidunt dolor, at accumsan odio. Morbi eget ligula
                    gravida, pulvinar magna eget, eleifend mi. Proinfdghkjkmllvmflvdvmldfmvdvdlvdlvdlvmdvmmvdovdmvodvmmdvdmvodmv eefdghjk gsdgsdgsdgsgsgsdgsdggsdggs
                </div>
                <div class="comments__reply">
                    <button type="button" class="comments__reply-btn">Reply</button>
                </div>
            </div>
        </div>

        <div class="comments__item">
            <div class="comments__photo">
                <img src="img/comments/prof.jpeg" alt="" class="comments__img">
            </div>

            <div class="comments__info">
                <div class="comments__name">
                    Roman Leontiev
                </div>

                <div class="commemts__date">November 01.2020 12:45</div>

                <div class="comments__text">bmrfbmdfvddlNullam eget tincidunt dolor, at accumsan odio. Morbi eget ligula
                    gravida, pulvinar magna eget, eleifend mi.
                    Proinfdghkjkmllvmflvdvmldfmvdvdlvdlvdlvmdvmmvdovdmvodvmmdvdmvodmv eefdghjk
                    gsdgsdgsdgsgsgsdgsdggsdggs
                </div>
                <div class="comments__reply">
                    <button type="button" class="comments__reply-btn" data-toggle="modal" data-target="#staticBackdrop">
                        Reply
                    </button>
                </div>
            </div>
        </div>

        <#include "modal.ftl">

    </div>

    <form method="post" class="comments__post">
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
