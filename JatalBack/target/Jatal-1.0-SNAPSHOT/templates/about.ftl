<%--
  Created by IntelliJ IDEA.
  User: 45
  Date: 29.09.2020
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
<#--    <%@include file="head.ftl"%>-->
    <#include "head.ftl">
</head>
<body>
<#--<%--Preloader--%>-->
<#--<%@include file="jsps/preloader.jsp"%>-->
<#include "ftl/preloader.ftl">

<#--<%@include file="sprite/sprite.html"%>-->
<#include "sprite/sprite.html">

<#--<%--Header--%>-->
<#--<%@include file="jsps/header.jsp"%>-->
<#include "ftl/header.ftl">

<#--<%--About--%>-->
<#--<%@include file="jsps/about/about.jsp"%>-->
<#include "ftl/about/about.ftl">

<#--<%--Footer--%>-->
<#--<%@include file="jsps/footer.jsp"%>-->
<#include "ftl/footer.ftl">

<script>
    <#include "js/app.js">
</script>
<script>
    <#include "js/util.js">
</script>
<script>
    <#include "js/modal.js">
</script>
</body>
</html>
