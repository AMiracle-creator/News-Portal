<%--
  Created by IntelliJ IDEA.
  User: 45
  Date: 25.09.2020
  Time: 20:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <title>Allposts</title>
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

<%--Posts--%>
<%@include file="jsps/allpost/posts.jsp"%>

<%--Footer--%>
<%@include file="jsps/footer.jsp"%>

<script>
   <%@include file="js/app.js"%>
</script>
</body>
</html>
