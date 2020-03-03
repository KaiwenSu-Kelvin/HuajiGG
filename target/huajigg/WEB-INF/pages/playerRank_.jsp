<%--
  Created by IntelliJ IDEA.
  User: KelvinSu
  Date: 2020/1/6
  Time: 1:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:forEach items="${players}" var="player">
        <td>${player.pname}</td>
        <td>${player.plevel}</td>
        <td>${player.prank}</td>
    </c:forEach>
</body>
</html>
