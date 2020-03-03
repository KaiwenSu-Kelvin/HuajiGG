<%--
  Created by IntelliJ IDEA.
  User: KelvinSu
  Date: 2020/1/6
  Time: 19:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/lib/echarts/dist/echarts.min.js"></script>
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

        div.smallShow {
            height: 40px;
            width: 40px;

        }
    </style>
    <title>rankList</title>
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
<div style="width: 970px; min-height: 500px; margin: 0 auto;">


    <c:set var="num1" value="${players[0]}"/>
    <c:set var="num2" value="${players[1]}"/>
    <c:set var="num3" value="${players[2]}"/>
    <div class="layui-container" style="width: 970px; left: 25%;">
        <div class="layui-row" style="background-color: #FFFFFF; height: 200px; width:440px;">
								<span class="layui-badge layui-bg-orange" style="width: 24px; height: 24px; position: absolute;">
									<h3>1</h3>
								</span>
            <div class="layui-col-md4">
                <div style=" margin-left: 20px;margin-top: 50px;">
                    <img src="${pageContext.request.contextPath}/image/player/${num1.pimage}" style="width: 100px; height:100px;">
                </div>
            </div>
            <div class="layui-col-md4">
                <br><br>
                <p style="font-size: 24px;">${num1.pname}</p>
                <br><br><br>
                <p style="font-size: 16px;">${num1.prank}</p>
                <br><br>
                <p style="font-size: 16px;">lv.${num1.plevel}</p>
            </div>
            <div class="layui-col-md4">
                <br><br><br>
                <div id="${num1.pid}" style="width: 160px;height:120px; float: left"></div>
                <br>
                <span><fmt:formatNumber value="${num1.pWinNum/(num1.pWinNum+num1.pLoseNum)*100}" maxFractionDigits="2"/>%</span>
            </div>
        </div>
    </div>





    <div style="height: 400px; width: 100%; ">
        <div style="float: left; margin-left: 12.5%; margin-top: 30px; width: 25%; height: 280px; background-color: #FFFFFF;">
            <span class="layui-badge layui-bg-gray" style="width: 24px; height: 24px; position: absolute;"><h3>2</h3></span>
            <div style=" margin-left: 90px;margin-top: 30px;">
                <img src="${pageContext.request.contextPath}/image/player/${num2.pimage}" style="width: 60px; height:60px;" class="img-circle">
            </div>
            <div style=" margin-left: 70px;margin-top: 10px;">
                <p style="font-size: 18px;">${num2.pname}</p>
                <br>
                <p style="font-size: 16px;">${num2.prank}</p>
                <br>
                <p style="font-size: 16px;">lv.${num2.plevel}</p>
            </div>
            <div style=" margin-left: 65px;margin-top: 10px;">
                <div id="${num2.pid}" style="width: 100px;height:80px; float:left"></div>
                <br>
                <span><fmt:formatNumber value="${num2.pWinNum/(num2.pWinNum+num2.pLoseNum)*100}" maxFractionDigits="2"/>%</span>
            </div>
        </div>
        <div style="float: left; margin-left: 25%; margin-top: 30px; width: 25%; height: 280px; background-color: #FFFFFF;">
            <span class="layui-badge layui-bg-blue" style="width: 24px; height: 24px; position: absolute;"><h3>3</h3></span>
            <div style=" margin-left: 90px;margin-top: 30px;">
                <img src="${pageContext.request.contextPath}/image/player/${num3.pimage}" style="width: 60px; height:60px;" class="img-circle">
            </div>
            <div style=" margin-left: 70px;margin-top: 10px;">
                <p style="font-size: 18px;">${num3.pname}</p>
                <br>
                <p style="font-size: 16px;">${num3.prank}</p>
                <br>
                <p style="font-size: 16px;">lv.${num3.plevel}</p>
            </div>
            <div style=" margin-left: 65px;margin-top: 10px;">
                <div id="${num3.pid}" style="width: 100px;height:80px; float: left"></div>
                <br>
                <span><fmt:formatNumber value="${num3.pWinNum/(num3.pWinNum+num3.pLoseNum)*100}" maxFractionDigits="2"/>%</span>
            </div>
        </div>
    </div>







    <table class="layui-table" lay-skin="line">
        <colgroup>
            <col width="50">
            <col width="150">
            <col width="80">
            <col width="80">
            <col width="160">
        </colgroup>
        <thead>
        <tr>
            <th> </th>
            <th>召唤师</th>
            <th>段位</th>
            <th>等级</th>
            <th>胜率</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${players}" var="player" begin="3">
            <tr>
                <td>${player.pranking}</td>
                <td>
                    <div style="float: left; height: 42px; width: 42px;">
                        <img src="${pageContext.request.contextPath}/image/player/${player.pimage}" class="img-circle" width="42" height="42" alt="">
                    </div>

                    <div style="float: left; height: 42px; margin-left: 5px; padding-top: 12px;">
                        <p>${player.pname}</p>
                    </div>
                </td>
                <td>${player.prank}</td>
                <td>lv.${player.plevel}</td>
                <td>
                    <div id="${player.pid}" style="width: 100px;height:80px; float: left"></div>
                    <br>
                    <span><fmt:formatNumber value="${player.pWinNum/(player.pWinNum+player.pLoseNum)*100}" maxFractionDigits="2"/>%</span>
                </td>
            </tr>

        </c:forEach>
        </tbody>
    </table>
</div>
<c:forEach items="${players}" var="player">
    <script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('${player.pid}'));

    // 指定图表的配置项和数据
    var option = {
        tooltip: {
            trigger: 'item',
            formatter: '{a} <br/>{b}: {c} ({d}%)'
        },

        series: [{
            name: '场次',
            type: 'pie',
            radius: ['50%', '70%'],
            avoidLabelOverlap: false,
            label: {
                normal: {
                    show: false,
                    position: 'center'
                },
                emphasis: {
                    show: true,
                    textStyle: {
                        fontSize: '16',
                        fontWeight: 'bold'
                    }
                }
            },
            labelLine: {
                normal: {
                    show: false
                }
            },
            data: [{
                value: ${player.pWinNum},
                name: '胜场'
            },
                {
                    value: ${player.pLoseNum},
                    name: '负场'
                },
            ]
        }]
    };



    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
</c:forEach>

</body>
</html>
