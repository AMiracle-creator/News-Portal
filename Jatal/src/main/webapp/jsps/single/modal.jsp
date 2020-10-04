<%--
  Created by IntelliJ IDEA.
  User: 45
  Date: 29.09.2020
  Time: 20:26
  To change this template use File | Settings | File Templates.
--%>
<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">

            <button type="button" class="modal__close" data-dismiss="modal" aria-label="Close">
                <svg class="modal__close-icon">
                    <use xlink:href="#close"></use>
                </svg>
            </button>

            <div class="modal__title">Write comment</div>

            <form class="form" method="post">
                <div class="form__group">
<%--                    <div class="modal__name">--%>
<%--                        <label for="name">Name</label>--%>
<%--                        <input class="input" type="text" id="name">--%>
<%--                    </div>--%>
<%--                    <div class="modal__name">--%>
<%--                        <label for="surname">Surname</label>--%>
<%--                        <input class="input" type="text" id="surname">--%>
<%--                    </div>--%>

                    <div class="modal__textarea">
                        <label for="text">Comment</label>
                        <textarea class="modal__text" name="text" id="text"></textarea>
                    </div>

                    <button class="btn btn--pink" type="submit">Send comment</button>

                </div>
            </form>


        </div>
    </div>
</div>
