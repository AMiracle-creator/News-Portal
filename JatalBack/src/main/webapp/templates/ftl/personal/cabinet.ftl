
<div class="cabinet">
    <div class="cabinet__bg">
        <img src="img/cabinet/bg-cabinet.jpg" alt="" class="cabinet__img">
    </div>
    <div class="container">
        <div class="cabinet__inner">

            <#include "cabinet__header.ftl">

            <div class="cabinet__content">
                <div class="cabinet__content-header">
                    <div class="profile">
                        <div class="profile__photo">
                            <img src="img/posts/authorphoto.jpg" alt="" class="cabin__img">
                        </div>
                        <button class="profile__change">Change photo</button>
                    </div>

                    <div class="profile__content-info">
                        <div class="info__title">Personal Information</div>
                        <div class="info__subtitle">you attract what's inside you</div>
                    </div>
                </div>

                <form action="" method="post" class="personal__info">
                    <div class="personal__info-item">
                        <div class="personal__info-inner">
                            <label for="name" class="personal__info-name">Name</label>
                            <input type="text" class="personal__info-fieldname" id="name">
                        </div>
                        <div class="personal__info-inner">
                            <label for="surname" class="personal__info-name">Surname</label>
                            <input type="text" class="personal__info-fieldname" id="surname">
                        </div>
                    </div>

                    <div class="personal__info-item">
                        <div class="personal__info-inner">
                            <label for="email" class="personal__info-name">Email</label>
                            <input type="email" class="personal__info-fieldname" id="email">
                        </div>
                        <div class="personal__info-inner">
                            <label for="email" class="personal__info-name">About</label>
                            <textarea type="text" class="personal__info-text" id="text"></textarea>
                        </div>
                    </div>

                    <div class="btn-pers">
                        <button type="button" class="personal__save">Save</button>
                    </div>

                </form>

            </div>
        </div>
    </div>
</div>