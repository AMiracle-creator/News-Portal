
<div class="cabinet">
    <div class="cabinet__bg">
        <img src="templates/img/cabinet/bg-cabinet.jpg" alt="" class="cabinet__img">
    </div>
    <div class="container">
        <div class="cabinet__inner">

            <#include "cabinet__header.ftl">

            <form action="/FinalJatal_war/redact_profile" method="post" enctype="multipart/form-data"  class="cabinet__content">
                <div class="cabinet__content-header">
                    <div class="profile">
                        <input type="file" class="profile__change" name="photo">
                    </div>

                    <div class="profile__content-info">
                        <div class="info__title">Personal Information</div>
                        <div class="info__subtitle">you attract what's inside you</div>
                    </div>
                </div>

                <div class="personal__info">
                    <div class="personal__info-item">
                        <div class="personal__info-inner">
                            <label for="name" class="personal__info-name">Name</label>
                            <input type="text" class="personal__info-fieldname" id="name" name="username">
                        </div>
                        <div class="personal__info-inner">
                            <label for="surname" class="personal__info-name">Surname</label>
                            <input type="text" class="personal__info-fieldname" id="surname" name="surname">
                        </div>
                    </div>

                    <div class="personal__info-item">
                        <div class="personal__info-inner">
                            <label for="email" class="personal__info-name">Email</label>
                            <input type="email" class="personal__info-fieldname" id="email" name="email ">
                        </div>
                        <div class="personal__info-inner">
                            <label for="email" class="personal__info-name">About</label>
                            <textarea type="text" class="personal__info-text" id="text" name="info"></textarea>
                        </div>
                    </div>

                    <div class="btn-pers">
                        <button type="submit" class="personal__save">Save</button>
                    </div>

                </div>

            </form>
        </div>
    </div>
</div>