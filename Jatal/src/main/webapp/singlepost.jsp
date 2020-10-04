<%--
  Created by IntelliJ IDEA.
  User: 45
  Date: 27.09.2020
  Time: 0:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%--Preloader--%>
<%@include file="jsps/preloader.jsp"%>

<%@include file="sprite/sprite.html"%>

<%--Header--%>
<%@include file="jsps/header.jsp"%>

<%--Intro--%>
<%@include file="jsps/intro.jsp"%>

<%--SinglePost--%>
<%@include file="jsps/single/singpost.jsp"%>



<%--Footer--%>
<%@include file="jsps/footer.jsp"%>

<script>
    <%@include file="js/app.js"%>
</script>
<script>
    <%@include file="js/util.js"%>
</script>
<script>
    <%@include file="js/modal.js"%>
</script>
</body>
</html>
