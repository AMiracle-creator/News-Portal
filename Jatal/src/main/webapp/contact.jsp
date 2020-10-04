<%--
  Created by IntelliJ IDEA.
  User: 45
  Date: 30.09.2020
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp" %>
</head>
<body>
<%--Preloader--%>
<%@include file="jsps/preloader.jsp" %>

<%@include file="sprite/sprite.html" %>

<%--Header--%>
<%@include file="jsps/header.jsp" %>

<%--Contacts--%>
<%@include file="jsps/contacts/contacts.jsp" %>

<%--Footer--%>
<%@include file="jsps/footer.jsp" %>

<script>
    <%@include file="js/app.js"%>
</script>
</body>
</html>
