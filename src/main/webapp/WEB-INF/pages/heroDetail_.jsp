<%--
  Created by IntelliJ IDEA.
  User: KelvinSu
  Date: 2020/1/1
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:forEach items="${heroSkills}" var="heroSkill">
        <img src="${pageContext.request.contextPath}/image/heroSkill/${heroSkill.hsImage}">
        <p>${heroSkill.hsButton}：${heroSkill.hsName}——${heroSkill.hsDesc}</p>
    </c:forEach>
    <<<<<<<<<<>>>>>>>>>>><<<<<<<<<<>>>>>>>>>>><<<<<<<<<<>>>>>>>>>>>
    <c:forEach items="${recommendedSummonerSpells}" var="recommendedSummonerSpell">
        <p>选用率：${recommendedSummonerSpell.rssPickRate}% 登场次数：${recommendedSummonerSpell.rssPickNum} 胜率：${recommendedSummonerSpell.rssWinRate}%</p>
        <img src="${pageContext.request.contextPath}/image/summonerSpell/${recommendedSummonerSpell.rssSummonerSpell1.ssImage}">
        <p>${recommendedSummonerSpell.rssSummonerSpell1.ssName}-${recommendedSummonerSpell.rssSummonerSpell1.ssDesc}</p>
        <img src="${pageContext.request.contextPath}/image/summonerSpell/${recommendedSummonerSpell.rssSummonerSpell2.ssImage}">
        <p>${recommendedSummonerSpell.rssSummonerSpell2.ssName}-${recommendedSummonerSpell.rssSummonerSpell2.ssDesc}</p>
        <<<<<<<<<<>>>>>>>>>>><<<<<<<<<<>>>>>>>>>>><<<<<<<<<<>>>>>>>>>>>
    </c:forEach>

    <<<<<<<<<<>>>>>>>>>>><<<<<<<<<<>>>>>>>>>>><<<<<<<<<<>>>>>>>>>>>
    <c:forEach items="${heroRecommendRunes}" var="heroRecommendRune">
        <p>选用率：${heroRecommendRune.rrbPickRate} 登场次数：${heroRecommendRune.rrbPickNum}胜率：${heroRecommendRune.rrbWinRate}</p>
        <c:forEach items="${heroRecommendRune.runes}" var="rune">
            <img src="${pageContext.request.contextPath}/image/rune/${rune.rimage}">
        </c:forEach>
    </c:forEach>


    <<<<<<<<<<>>>>>>>>>>><<<<<<<<<<>>>>>>>>>>><<<<<<<<<<>>>>>>>>>>>
    <c:forEach items="${heroRecommendedItems}" var="heroRecommendedItem">
        <p>选用率：${heroRecommendedItem.ribPickRate} 登场次数：${heroRecommendedItem.ribPickNum}胜率：${heroRecommendedItem.ribWinRate}</p>
        <c:forEach items="${heroRecommendedItem.items}" var="item">
            <img src="${pageContext.request.contextPath}/image/item/${item.iimage}">
        </c:forEach>
    </c:forEach>
</body>
</html>
