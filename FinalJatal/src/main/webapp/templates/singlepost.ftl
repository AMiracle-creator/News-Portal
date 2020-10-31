
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

<#--<%--Intro--%>-->
<#--<%@include file="jsps/intro.jsp"%>-->
<#--<#include "ftl/intro.ftl">-->

<#--<%--SinglePost--%>-->
<#--<%@include file="jsps/single/singpost.jsp"%>-->
<#include "ftl/single/singpost.ftl">


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
