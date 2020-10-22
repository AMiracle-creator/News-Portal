<#--<%@ page import="java.util.List" %>-->
<#--<%--Created by IntelliJ IDEA.-->
<#--User: 45-->
<#--Date: 21.09.2020-->
<#--Time: 11:26-->
<#--To change this template use File | Settings | File Templates.-->
<#----%>-->
<#--<%@ page contentType="text/html;charset=UTF-8" language="java" %>-->
<#--<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>-->
<html>
<head>
    <title>Title</title>
<#--    <%@include file="head.ftl" %>-->
    <#include "head.ftl">
</head>
<body>
<#--<%--Preloader--%>-->
<#--<%@include file="jsps/preloader.jsp"%>-->
<#include "ftl/preloader.ftl">

<#--<%@include file="sprite/sprite.html" %>-->
<#include "sprite/sprite.html">
<#--<%--Home--%>-->
<#--<%@include file="jsps/header.jsp" %>-->
<#include "ftl/header.ftl">

<#--<%@include file="jsps/intro.jsp" %>-->
<#include "ftl/intro.ftl">
<#--<%--Trend--%>-->
<#--<%@include file="jsps/home/trend.jsp" %>-->
<#include "ftl/home/trend.ftl">
<#--<%--Popular--%>-->
<#--<%@include file="jsps/home/popular.jsp" %>-->
<#include "ftl/home/popular.ftl">

<#--<%--Latest News--%>-->
<#--<%@include file="jsps/home/latenews.jsp" %>-->
<#include "ftl/home/latenews.ftl">
<#--<%--Footer--%>-->
<#--<%@include file="jsps/footer.jsp" %>-->
<#include "ftl/footer.ftl">
<script>
    <#include "js/app.js">
</script>
</body>
</html>
