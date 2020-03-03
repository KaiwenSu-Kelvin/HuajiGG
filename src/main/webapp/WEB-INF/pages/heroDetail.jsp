<%--
  Created by IntelliJ IDEA.
  User: KelvinSu
  Date: 2020/1/6
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css">
    <style type="text/css">
        div.category {
            width: 100%;
            position: relative;
        }

        div.category div.headbar {
            background-color: midnightblue;
        }

        div.category div.rightMenu {
            display: inline-block;
        }

        div.category div.rightMenu a {
            font-size: 20px;
            color: azure;
            text-decoration: none;
        }

        div.category div.rightMenu span {
            margin: 0px 20px 0px 20px;
        }
    </style>
    <title>detail</title>
</head>
<body style="background-color: #eeeeee">
<div class="category">
    <div class="headbar">

        <div class="rightMenu">
            <span><a href="#nowhere"><img src="${pageContext.request.contextPath}/image/logo/logo.png" height="60px"></a></span>
            <span>
						<a href="${pageContext.request.contextPath}/heroPosition/all">
							首页
						</a></span>
            <span>
						<a href="${pageContext.request.contextPath}/heroPosition/all">
							英雄数据
						</a>
					</span>
            <span>
						<a href="${pageContext.request.contextPath}/player/all">
							排行榜
						</a>
					</span>
        </div>
    </div>
</div>

<div style="background-color: #3C3C3C; height: 249px; width: 100%; padding-top: 8px;">
    <div style="display: block; margin-bottom: 0px; margin-left: 126px; margin-right: 126px; margin-left: 21%; margin-top: 0px; width: 1080px; height: 40px; position: relative;"><a
            href="http://127.0.0.1:8848/obgg/detail.html" class="layui-btn layui-btn-lg layui-btn-normal">上单</a></div>
    <div style="display: block; float: left; margin-bottom: 24px; margin-top: 30px; margin-left: 126px;margin-left: 20%; width: 610px;">
        <div style="display: block; float: left; height: 140px; margin-right: 20px; position: relative; width: 140px;">
            <img src="${pageContext.request.contextPath}/image/hero/${hero.image}" />
        </div>
        <h1 style="color: #FFFFFF;">${hero.hname}</h1>
        <div style="height: 42px; margin-top: 20px;">


            <%--英雄技能--%>
            <c:forEach items="${heroSkills}" var="heroSkill">
                <button type="button" class="btn btn-primary" style="background-color:transparent; border-style:none;" title="${heroSkill.hsName}"
                        data-container="body" data-toggle="popover" data-placement="top" data-content="${heroSkill.hsDesc}">
                    <div style="position: relative; width: 42px; height: 42px;">
                        <img src="${pageContext.request.contextPath}/image/heroSkill/${heroSkill.hsImage}" width="42" height="42" alt="">
                        <span style="position: absolute; top: 0; left: 0;">${heroSkill.hsButton}</span>
                    </div>
                </button>
            </c:forEach>

        </div>

    </div>

</div>
<div style="background-color: #EEEEEE; margin-right: 126px; margin-left: 126px; margin-bottom: 0px; margin-top: 20px; height: 100%;">
    <div class="layui-row">
        <div class="layui-col-md12" style="width: 70%; left: 15%">
            <div class="layui-card">
                <div class="layui-card-header">推荐的召唤师技能</div>
                <div class="layui-card-body">
                    <table class="layui-table" lay-skin="line">
                        <colgroup>
                            <col width="400">
                            <col width="50">
                            <col width="50">
                        </colgroup>
                        <thead>
                        <tr>
                            <th>技能</th>
                            <th>登场率</th>
                            <th>胜率</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%--推荐召唤师技能--%>
                        <c:forEach items="${recommendedSummonerSpells}" var="recommendedSummonerSpell">
                            <tr>
                                <td>
                                    <button type="button" class="btn btn-primary" style="background-color:transparent; border-style:none;" title="${recommendedSummonerSpell.rssSummonerSpell1.ssName}"
                                            data-container="body" data-toggle="popover" data-placement="top" data-content="${recommendedSummonerSpell.rssSummonerSpell1.ssDesc}">
                                        <div style="position: relative; width: 42px; height: 42px;">
                                            <img src="${pageContext.request.contextPath}/image/summonerSpell/${recommendedSummonerSpell.rssSummonerSpell1.ssImage}" width="42" height="42" alt="">
                                        </div>
                                    </button>
                                    <button type="button" class="btn btn-primary" style="background-color:transparent; border-style:none;" title="${recommendedSummonerSpell.rssSummonerSpell2.ssName}"
                                            data-container="body" data-toggle="popover" data-placement="top" data-content="${recommendedSummonerSpell.rssSummonerSpell2.ssDesc}">
                                        <div style="position: relative; width: 42px; height: 42px;">
                                            <img src="${pageContext.request.contextPath}/image/summonerSpell/${recommendedSummonerSpell.rssSummonerSpell2.ssImage}" width="42" height="42" alt="">
                                        </div>
                                    </button>
                                </td>
                                <td>${recommendedSummonerSpell.rssPickRate}%</td>
                                <td>${recommendedSummonerSpell.rssWinRate}%</td>
                            </tr>
                        </c:forEach>

                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>


            <div class="layui-card">
                <div class="layui-card-header">推荐的技能建设</div>
                <div class="layui-card-body">
                    <table class="layui-table" lay-skin="line" width="720px">
                        <colgroup>
                            <col width="400">
                            <col width="50">
                            <col width="50">
                        </colgroup>
                        <thead>
                        <tr>
                            <th>技能建设</th>
                            <th>登场率</th>
                            <th>胜率</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>
                                <c:forEach items="${heroSkills}" var="heroSkill" begin="1" end="3" varStatus="count">
                                    <button type="button" class="btn btn-primary" style="background-color:transparent; border-style:none;" title="${heroSkill.hsName}"
                                            data-container="body" data-toggle="popover" data-placement="top" data-content="${heroSkill.hsDesc}">
                                        <div style="position: relative; width: 42px; height: 42px;">
                                            <img src="${pageContext.request.contextPath}/image/heroSkill/${heroSkill.hsImage}" width="42" height="42" alt="">
                                            <span style="position: absolute; top: 0; left: 0;">${heroSkill.hsButton}</span>
                                        </div>
                                    </button>
                                    <c:if test="${count.index != 3}">
                                    <span>></span>
                                    </c:if>
                                </c:forEach>
                                <%--<button type="button" class="btn btn-primary" style="background-color:transparent; border-style:none;" title="被动技能"
                                        data-container="body" data-toggle="popover" data-placement="top" data-content="这是一个被动技能">
                                    <div style="position: relative; width: 42px; height: 42px;">
                                        <img src="${pageContext.request.contextPath}/lib/img/skill1.png" width="42" height="42" alt="">
                                        <span style="position: absolute; top: 0; left: 0;">p</span>
                                    </div>
                                </button>
                                <span>></span>
                                <button type="button" class="btn btn-primary" style="background-color:transparent; border-style:none;" title="被动技能"
                                        data-container="body" data-toggle="popover" data-placement="top" data-content="这是一个被动技能">
                                    <div style="position: relative; width: 42px; height: 42px;">
                                        <img src="${pageContext.request.contextPath}/lib/img/skill1.png" width="42" height="42" alt="">
                                        <span style="position: absolute; top: 0; left: 0;">p</span>
                                    </div>
                                </button>--%>
                                <br>
                                <table class="layui-table" lay-size="sm" width="400">
                                    <colgroup>
                                        <col width="10">
                                        <col width="10">
                                        <col width="10">
                                        <col width="10">
                                        <col width="10">
                                        <col width="10">
                                        <col width="10">
                                        <col width="10">
                                        <col width="10">
                                        <col width="10">
                                        <col width="10">
                                        <col width="10">
                                        <col width="10">
                                        <col width="10">
                                        <col width="10">
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th>1</th>
                                        <th>2</th>
                                        <th>3</th>
                                        <th>4</th>
                                        <th>5</th>
                                        <th>6</th>
                                        <th>7</th>
                                        <th>8</th>
                                        <th>9</th>
                                        <th>10</th>
                                        <th>11</th>
                                        <th>12</th>
                                        <th>13</th>
                                        <th>14</th>
                                        <th>15</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>Q</td>
                                        <td>E</td>
                                        <td>W</td>
                                        <td>W</td>
                                        <td>W</td>
                                        <td>W</td>
                                        <td>W</td>
                                        <td>W</td>
                                        <td>W</td>
                                        <td>W</td>
                                        <td>W</td>
                                        <td>W</td>
                                        <td>W</td>
                                        <td>W</td>
                                        <td>W</td>
                                    </tr>

                                    </tbody>

                                </table>
                            </td>
                            <td>100%</td>
                            <td>100%</td>
                        </tr>

                        </tbody>
                    </table>
                </div>
            </div>
            <div class="layui-card">
                <div class="layui-card-header">推荐的物品建设</div>
                <div class="layui-card-body">
                    <table class="layui-table">
                        <colgroup>
                            <col width="100">
                            <col width="300">
                            <col width="50">
                            <col width="50">
                        </colgroup>
                        <thead>
                        <tr>
                            <th>类型</th>
                            <th>装备</th>
                            <th>胜率</th>
                            <th>登场率</th>
                        </tr>

                        </thead>
                        <tbody>

                        <c:forEach items="${heroRecommendedItems}" var="heroRecommendedItem" varStatus="count">
                            <tr>
                                <c:if test="${count.index==0}">
                                <td rowspan="2">初始装备</td>
                                </c:if>
                                <td>
                                    <c:forEach items="${heroRecommendedItem.items}" var="item">
                                        <button type="button" class="btn btn-primary" style="background-color:transparent; border-style:none;" title="${item.iname}"
                                                data-container="body" data-toggle="popover" data-placement="top" data-content="${item.idesc}">
                                            <div style="position: relative; width: 42px; height: 42px;">
                                                <img src="${pageContext.request.contextPath}/image/item/${item.iimage}" width="42" height="42" alt="">
                                            </div>
                                        </button>
                                    </c:forEach>
                                </td>
                                <td>${heroRecommendedItem.ribWinRate}%</td>
                                <td>${heroRecommendedItem.ribPickRate}%</td>

                            </tr>
                        </c:forEach>


                        </tbody>
                    </table>
                </div>
            </div>
            <div class="layui-card">
                <div class="layui-card-header">符文</div>
                <div class="layui-card-body">
                    <table class="layui-table">
                        <colgroup>
                            <col width="100">
                            <col width="100">
                            <col width="100">
                            <col width="100">
                            <col width="50">
                            <col width="50">
                            <col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>组合</th>
                            <th>主系+副系+小符文</th>
                            <th>胜率</th>
                            <th>登场率</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${heroRecommendRunes}" var="heroRecommendRune">
                        <tr>
                            <td>
                                精密 + 主宰
                                <br />
                                <button type="button" class="btn btn-primary" style="background-color:transparent; border-style:none;" title="被动技能"
                                        data-container="body" data-toggle="popover" data-placement="top" data-content="这是一个被动技能">
                                    <div style="position: relative; width: 42px; height: 42px;">
                                        <img src="${pageContext.request.contextPath}/image/rune/精密.png" class="img-circle" width="42" height="42" alt="">
                                    </div>
                                </button>
                                <span>+</span>
                                <button type="button" class="btn btn-primary" style="background-color:transparent; border-style:none;" title="被动技能"
                                        data-container="body" data-toggle="popover" data-placement="top" data-content="这是一个被动技能">
                                    <div style="position: relative; width: 42px; height: 42px;">
                                        <img src="${pageContext.request.contextPath}/image/rune/主宰.png" class="img-circle" width="42" height="42" alt="">
                                    </div>
                                </button>

                            </td>
                            <td>
                                <c:forEach items="${heroRecommendRune.runes}" var="rune">
                                <button type="button" class="btn btn-primary" style="background-color:transparent; border-style:none;" title="${rune.rname}"
                                        data-container="body" data-toggle="popover" data-placement="top" data-content="${rune.rdesc}">
                                    <div style="position: relative; width: 42px; height: 42px;">
                                        <img src="${pageContext.request.contextPath}/image/rune/${rune.rimage}" class="img-circle" width="42" height="42" alt="" style="background-color: #000000">
                                    </div>
                                </button>
                                <%--<span>+</span>--%>
                                </c:forEach>
                            </td>

                            <td>${heroRecommendRune.rrbWinRate}%</td>
                            <td>${heroRecommendRune.rrbPickRate}%</td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <%--<div class="layui-col-md4" style="background-color: #1E9FFF">
            你的内容 4/12
        </div>--%>
    </div>

</div>
</div>





<script src="${pageContext.request.contextPath}/lib/layui/layui.js"></script>
<!-- <script>
    layui.use('layer', function() {
        var layer = layui.layer;

        var active = {
            setTop: function() {
                var that = this;
                layer.open({
                    type: 1,
                    title: '被动技能',
                    content: '巴拉巴拉一长串' //这里content是一个普通的String
                });
            }
        }

        $('#layerDemo .layui-btn').on('click', function() {
            var othis = $(this),
                method = othis.data('method');
            active[method] ? active[method].call(this, othis) : '';
        });


    });
</script>
-->
<script>
    $(function() {
        $("[data-toggle='popover']").popover();
    });
</script>


</body>
</html>

