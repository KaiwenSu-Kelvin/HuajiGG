<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
	<head>
		<meta charset="utf-8" />
		<script src="https://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
		<link href="https://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
		<script src="https://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
		<title>obgg</title>
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

			div.searchDiv {
				background-color: deepskyblue;
				width: 400px;
				margin: 50px auto;
				padding: 1px;
				height: 40px;
				display: block;
			}

			div.searchDiv input {
				width: 275px;
				border: 1px solid transparent;
				height: 36px;
				margin: 1px;
				outline: none;
			}

			div.searchDiv button {
				width: 110px;
				border: 1px solid transparent;
				background-color: #C40000;
				color: white;
				font-size: 20px;
				font-weight: bold;
			}

			div.searchBelow {
				margin-top: 3px;
				margin-left: -20px;
			}

			div.searchBelow span {
				color: #999;
			}
			
			div.center {
				margin: 50px auto;
				padding: 1px;
			}

			div.searchBelow a {
				padding: 0px 20px 0px 20px;
				font-size: 14px;
			}

			body {
				font-size: 16px;
				font-family: Arial;
			}
		</style>
	</head>
	<body style="background-color: deepskyblue">
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
		<div>
				
			<div class="searchDiv">
				<a href="#nowhere"> <img class="logo" src="${pageContext.request.contextPath}/image/logo/logo.png" id="logo">
				</a>
				<input type="text" placeholder="英雄名 召唤师" name="keyword">
				<button class="searchButton" type="submit">搜索</button>
				<div class="searchBelow">
					<span> <a href="#nowhere"> 英雄数据 </a> <span>|</span>
					</span> <span> <a href="#nowhere"> 排行榜 </a> <span>|</span>
				</div>
			</div>
		</div>

	</body>
</html>
