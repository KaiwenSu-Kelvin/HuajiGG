<%--
  Created by IntelliJ IDEA.
  User: KelvinSu
  Date: 2019/12/27
  Time: 23:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<table>
<c:forEach items="${heroPositions}" var="heroPosition">
    <img src="${pageContext.request.contextPath}/image/hero/${heroPosition.hero.image}">
    <p>${heroPosition.hero.hname} ${heroPosition.hpPosition} ${heroPosition.hpWinRate}</p>
</c:forEach>
===========================================================================================
<c:forEach items="${heroes}" var="hero">
    <img src="${pageContext.request.contextPath}/image/hero/${hero.image}">
</c:forEach>

</table>
</body>
</html>
