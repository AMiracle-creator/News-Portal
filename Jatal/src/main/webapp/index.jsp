<%@ page import="java.util.List" %>
<%--Created by IntelliJ IDEA.
User: 45
Date: 21.09.2020
Time: 11:26
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp" %>
</head>
<body>
<%--Preloader--%>
<%@include file="jsps/preloader.jsp"%>

<%@include file="sprite/sprite.html" %>

<%--Home--%>
<%@include file="jsps/header.jsp" %>

<%--Intro--%>
<%@include file="jsps/intro.jsp" %>

<%--Trend--%>
<%@include file="jsps/home/trend.jsp" %>

<%--Popular--%>
<%@include file="jsps/home/popular.jsp" %>

<%--Latest News--%>
<%@include file="jsps/home/latenews.jsp" %>

<%--Footer--%>
<%@include file="jsps/footer.jsp" %>

<script>
    <%@include file="js/app.js"%>
</script>
</body>
</html>
