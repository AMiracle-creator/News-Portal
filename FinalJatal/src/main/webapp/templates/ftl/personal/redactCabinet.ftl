<div class="cabinet">
    <div class="cabinet__bg">
        <img src="templates/img/cabinet/bg-cabinet.jpg" alt="" class="cabinet__img">
    </div>
    <div class="container">
        <div class="cabinet__inner">

            <#include "cabinet__header.ftl">

            <div class="cabinet__content">
                <div class="cabinet__content-header">
                    <div class="profile">
                        <div class="profile__photo">
<#--                            /FinalJatal_war/photo?fileName=${user.photo}-->
                            <img src="/FinalJatal_war/photo?fileName=${user.photo}" alt="" class="cabin__img" >
                        </div>
                    </div>

                    <div class="profile__content-info">
                        <div class="info__title">Personal Information</div>
                        <div class="info__subtitle">you attract what's inside you</div>
                    </div>
                </div>

                <form action="/FinalJatal_war/redact_profile" method="get" class="personal__info">
                    <div class="personal__info-item">
                        <div class="personal__info-inner">
                            <label for="name" class="personal__info-name">Name</label>
                            <div class="personal__info-fieldname">${user.name}</div>

                        </div>
                        <div class="personal__info-inner">
                            <label for="surname" class="personal__info-name">Surname</label>
                            <div class="personal__info-fieldname">${user.surname}</div>
                        </div>
                    </div>

                    <div class="personal__info-item">
                        <div class="personal__info-inner">
                            <label for="email" class="personal__info-name">Email</label>
                           <div class="personal__info-fieldname">${user.email}</div>
                        </div>
                        <div class="personal__info-inner">
                            <label for="email" class="personal__info-name">About</label>
                            <div class="personal__info-text redact__info-text">${user.info}
                            </div>
                        </div>
                    </div>

                    <div class="btn-pers">
                        <button type="submit" class="personal__save">Редактировать</button>
                    </div>

                </form>

            </div>
        </div>
    </div>
</div>