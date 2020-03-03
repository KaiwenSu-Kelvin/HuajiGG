<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

	<head>
		<meta charset="UTF-8">
		<title>test</title>
		<link href="${pageContext.request.contextPath}/lib/layui/css/layui.css" rel="stylesheet" type="text/css" />
				<style>
					body {
						margin: 10px;
					}
					
					.demo-carousel {
						height: 200px;
						line-height: 200px;
						text-align: center;
					}
				</style>
				<script src="${pageContext.request.contextPath}/lib/layui/layui.js"></script>
		
				<style>
					#all{
						width: 880px;
						text-align: center;
						margin-left: 110px;
					}
					div.big{
						float: left;
					}
					div.tablediv {
						float: left;
					}

					div.productItem {
						width: 114px;
						height: 117px;
						border: 1px solid white;
						background-color: white;
						margin: 8px 4px;
						float: left;
						cursor: pointer;
						text-align: left;
						color: #777777;
						font-size: 15px;

					}
					
					div.productItem span.productItemDesc {
						font-size: 12px;
						color: #666666;
						display: block;
						padding: 16px;
					}
					
					div.productItem span.productPrice {
						font-size: 16px;
						color: #FF003A;
						display: block;
						padding-left: 16px;
						margin-top: -10px;
					}
					
					div.productItem img {
						width: 112px;
						height: 115px;
					}
					
					div.productItem img:hover {
						opacity: 0.7;
						filter: alpha(opacity=70);
					}
					
					a.productItemDescLink {
						display: inline-block;
						height: 66px;
						text-decoration: none;
					}
					
					div.left-mark {
						display: inline-block;
						height: 20px;
						vertical-align: top;
						width: 5px;
						background-color: #19C8A9;
					}
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
	</head>

	<body>
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
		<div id="all" class="big">
			<div class="layui-tab layui-tab-brief " lay-filter="demo">
				<ul class="layui-tab-title">
					<li class="layui-this">全部英雄</li>
					<li>上单</li>
					<li>打野</li>
					<li>中单</li>
					<li>下路</li>
					<li>辅助</li>
					<li class="layui-nav-item">
						<input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="搜索英雄" class="layui-input">
					</li>
				</ul>
				<div class="layui-tab-content">
					<div class="layui-tab-item layui-show">
						<div class="eachHomepageCategoryProducts">
							<div class="left-mark"></div>
							<br>
							<c:forEach items="${heroes}" var="hero">
							<div class="productItem">
								<a href="${pageContext.request.contextPath}/heroDetail/overview?hid=${hero.hid}"><img width="50px" height="50px" src="${pageContext.request.contextPath}/image/hero/${hero.image}"></a>
								<div>${hero.hname}</div>
							</div>
							</c:forEach>
							<!--
	                        	作者：offline
	                        	时间：2020-01-06
	                        	描述：144
	                        -->

						</div>
					</div>
					<div class="layui-tab-item">
						<c:forEach items="${heroes}" var="hero">
							<div class="productItem">
								<a href="${pageContext.request.contextPath}/heroDetail/overview?hid=${hero.hid}"><img width="50px" height="50px" src="${pageContext.request.contextPath}/image/hero/${hero.image}"></a>
								<div>${hero.hname}</div>
							</div>
						</c:forEach>
					</div>

					<div class="layui-tab-item">
						<c:forEach items="${heroes}" var="hero">
							<div class="productItem">
								<a href="${pageContext.request.contextPath}/heroDetail/overview?hid=${hero.hid}"><img width="50px" height="50px" src="${pageContext.request.contextPath}/image/hero/${hero.image}"></a>
								<div>${hero.hname}</div>
							</div>
						</c:forEach>
					</div>

					<div class="layui-tab-item">
						<c:forEach items="${heroes}" var="hero">
							<div class="productItem">
								<a href="${pageContext.request.contextPath}/heroDetail/overview?hid=${hero.hid}"><img width="50px" height="50px" src="${pageContext.request.contextPath}/image/hero/${hero.image}"></a>
								<div>${hero.hname}</div>
							</div>
						</c:forEach>
					</div>

					<div class="layui-tab-item">
						<c:forEach items="${heroes}" var="hero">
							<div class="productItem">
								<a href="${pageContext.request.contextPath}/heroDetail/overview?hid=${hero.hid}"><img width="50px" height="50px" src="${pageContext.request.contextPath}/image/hero/${hero.image}"></a>
								<div>${hero.hname}</div>
							</div>
						</c:forEach>
					</div>

					<div class="layui-tab-item">
						<c:forEach items="${heroes}" var="hero">
							<div class="productItem">
								<a href="${pageContext.request.contextPath}/heroDetail/overview?hid=${hero.hid}"><img width="50px" height="50px" src="${pageContext.request.contextPath}/image/hero/${hero.image}"></a>
								<div>${hero.hname}</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
		<div class="layui-tab layui-tab-brief big" lay-filter="demo">
		
					<ul class="layui-tab-title">
						<li>上单</li>
						<li>打野</li>
						<li>中路</li>
						<li>下路</li>
						<li>辅助</li>
					</ul>
		
					<div class="layui-tab-content">
						<div class="layui-tab-item layui-show">
		
							<div class="layui-form">
								<table class="layui-table">
		
									<thead>
										<tr>
											<th>#</th>
											<th>英雄</th>
											<th>胜率</th>
											<th>登场率</th>
											<th>层级</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${heroPositions}" var="heroPosition">
											<c:if test="${heroPosition.hpPosition == 'top'}">
												<tr>
													<td>
														<font size="5"><b>${heroPosition.hpRanking}</b></font>
													</td>
													<td>
														<div class="tablediv"><a href="${pageContext.request.contextPath}/heroDetail/overview?hid=${heroPosition.hero.hid}"> <img width="50px" height="50px" src="${pageContext.request.contextPath}/image/hero/${heroPosition.hero.image}"></a></div>
														<div class="tablediv">
															<li>
																<font size="3"><b>${heroPosition.hero.hname}</b></font>
															</li>
															<li>${heroPosition.hpPosition}</li>
														</div>
													</td>
													<td>${heroPosition.hpWinRate}%</td>
													<td>${heroPosition.hpPickRate}%</td>


													<c:if test="${heroPosition.hpTire==1}">
														<td><span class="layui-badge layui-bg-red">${heroPosition.hpTire}</span></td>
													</c:if>
													<c:if test="${heroPosition.hpTire==2}">
														<td><span class="layui-badge layui-bg-orange">${heroPosition.hpTire}</span></td>
													</c:if>
													<c:if test="${heroPosition.hpTire==3}">
														<td><span class="layui-badge layui-bg-green">${heroPosition.hpTire}</span></td>
													</c:if>
													<c:if test="${heroPosition.hpTire==4}">
														<td><span class="layui-badge layui-bg-blue">${heroPosition.hpTire}</span></td>
													</c:if>
													<c:if test="${heroPosition.hpTire==5}">
														<td><span class="layui-badge layui-bg-gray">${heroPosition.hpTire}</span></td>
													</c:if>
												</tr>
											</c:if>
										</c:forEach>
									</tbody>
								</table>
							</div>
		
						</div>
		
						<div class="layui-tab-item">
							<table class="layui-table">
								<thead>
								<tr>
									<th>#</th>
									<th>英雄</th>
									<th>胜率</th>
									<th>登场率</th>
									<th>层级</th>
								</tr>
								</thead>
							<tbody>
							<c:forEach items="${heroPositions}" var="heroPosition">
								<c:if test="${heroPosition.hpPosition == 'jug'}">
									<tr>
										<td>
											<font size="5"><b>${heroPosition.hpRanking}</b></font>
										</td>
										<td>
											<div class="tablediv"><a href="${pageContext.request.contextPath}/heroDetail/overview?hid=${heroPosition.hero.hid}"> <img width="50px" height="50px" src="${pageContext.request.contextPath}/image/hero/${heroPosition.hero.image}"></a></div>
											<div class="tablediv">
												<li>
													<font size="3"><b>${heroPosition.hero.hname}</b></font>
												</li>
												<li>${heroPosition.hpPosition}</li>
											</div>
										</td>
										<td>${heroPosition.hpWinRate}%</td>
										<td>${heroPosition.hpPickRate}%</td>


										<c:if test="${heroPosition.hpTire==1}">
											<td><span class="layui-badge layui-bg-red">${heroPosition.hpTire}</span></td>
										</c:if>
										<c:if test="${heroPosition.hpTire==2}">
											<td><span class="layui-badge layui-bg-orange">${heroPosition.hpTire}</span></td>
										</c:if>
										<c:if test="${heroPosition.hpTire==3}">
											<td><span class="layui-badge layui-bg-green">${heroPosition.hpTire}</span></td>
										</c:if>
										<c:if test="${heroPosition.hpTire==4}">
											<td><span class="layui-badge layui-bg-blue">${heroPosition.hpTire}</span></td>
										</c:if>
										<c:if test="${heroPosition.hpTire==5}">
											<td><span class="layui-badge layui-bg-gray">${heroPosition.hpTire}</span></td>
										</c:if>
									</tr>
								</c:if>
							</c:forEach>
							</tbody>
							</table>
						</div>
		
						<div class="layui-tab-item">
							<table class="layui-table">
								<thead>
								<tr>
									<th>#</th>
									<th>英雄</th>
									<th>胜率</th>
									<th>登场率</th>
									<th>层级</th>
								</tr>
								</thead>
								<tbody>
								<c:forEach items="${heroPositions}" var="heroPosition">
									<c:if test="${heroPosition.hpPosition == 'mid'}">
										<tr>
											<td>
												<font size="5"><b>${heroPosition.hpRanking}</b></font>
											</td>
											<td>
												<div class="tablediv"><a href="${pageContext.request.contextPath}/heroDetail/overview?hid=${heroPosition.hero.hid}"> <img width="50px" height="50px" src="${pageContext.request.contextPath}/image/hero/${heroPosition.hero.image}"></a></div>
												<div class="tablediv">
													<li>
														<font size="3"><b>${heroPosition.hero.hname}</b></font>
													</li>
													<li>${heroPosition.hpPosition}</li>
												</div>
											</td>
											<td>${heroPosition.hpWinRate}%</td>
											<td>${heroPosition.hpPickRate}%</td>


											<c:if test="${heroPosition.hpTire==1}">
												<td><span class="layui-badge layui-bg-red">${heroPosition.hpTire}</span></td>
											</c:if>
											<c:if test="${heroPosition.hpTire==2}">
												<td><span class="layui-badge layui-bg-orange">${heroPosition.hpTire}</span></td>
											</c:if>
											<c:if test="${heroPosition.hpTire==3}">
												<td><span class="layui-badge layui-bg-green">${heroPosition.hpTire}</span></td>
											</c:if>
											<c:if test="${heroPosition.hpTire==4}">
												<td><span class="layui-badge layui-bg-blue">${heroPosition.hpTire}</span></td>
											</c:if>
											<c:if test="${heroPosition.hpTire==5}">
												<td><span class="layui-badge layui-bg-gray">${heroPosition.hpTire}</span></td>
											</c:if>
										</tr>
									</c:if>
								</c:forEach>
								</tbody>
							</table>
						</div>
		
						<div class="layui-tab-item">
							<table class="layui-table">
								<thead>
								<tr>
									<th>#</th>
									<th>英雄</th>
									<th>胜率</th>
									<th>登场率</th>
									<th>层级</th>
								</tr>
								</thead>
								<tbody>
								<c:forEach items="${heroPositions}" var="heroPosition">
									<c:if test="${heroPosition.hpPosition == 'adc'}">
										<tr>
											<td>
												<font size="5"><b>${heroPosition.hpRanking}</b></font>
											</td>
											<td>
												<div class="tablediv"><a href="${pageContext.request.contextPath}/heroDetail/overview?hid=${heroPosition.hero.hid}"> <img width="50px" height="50px" src="${pageContext.request.contextPath}/image/hero/${heroPosition.hero.image}"></a></div>
												<div class="tablediv">
													<li>
														<font size="3"><b>${heroPosition.hero.hname}</b></font>
													</li>
													<li>${heroPosition.hpPosition}</li>
												</div>
											</td>
											<td>${heroPosition.hpWinRate}%</td>
											<td>${heroPosition.hpPickRate}%</td>


											<c:if test="${heroPosition.hpTire==1}">
												<td><span class="layui-badge layui-bg-red">${heroPosition.hpTire}</span></td>
											</c:if>
											<c:if test="${heroPosition.hpTire==2}">
												<td><span class="layui-badge layui-bg-orange">${heroPosition.hpTire}</span></td>
											</c:if>
											<c:if test="${heroPosition.hpTire==3}">
												<td><span class="layui-badge layui-bg-green">${heroPosition.hpTire}</span></td>
											</c:if>
											<c:if test="${heroPosition.hpTire==4}">
												<td><span class="layui-badge layui-bg-blue">${heroPosition.hpTire}</span></td>
											</c:if>
											<c:if test="${heroPosition.hpTire==5}">
												<td><span class="layui-badge layui-bg-gray">${heroPosition.hpTire}</span></td>
											</c:if>
										</tr>
									</c:if>
								</c:forEach>
								</tbody>
							</table>
						</div>
		
						<div class="layui-tab-item">
							<table class="layui-table">
								<thead>
								<tr>
									<th>#</th>
									<th>英雄</th>
									<th>胜率</th>
									<th>登场率</th>
									<th>层级</th>
								</tr>
								</thead>
								<tbody>
								<c:forEach items="${heroPositions}" var="heroPosition">
									<c:if test="${heroPosition.hpPosition == 'sup'}">
										<tr>
											<td>
												<font size="5"><b>${heroPosition.hpRanking}</b></font>
											</td>
											<td>
												<div class="tablediv"><a href="${pageContext.request.contextPath}/heroDetail/overview?hid=${heroPosition.hero.hid}"> <img width="50px" height="50px" src="${pageContext.request.contextPath}/image/hero/${heroPosition.hero.image}"></a></div>
												<div class="tablediv">
													<li>
														<font size="3"><b>${heroPosition.hero.hname}</b></font>
													</li>
													<li>${heroPosition.hpPosition}</li>
												</div>
											</td>
											<td>${heroPosition.hpWinRate}%</td>
											<td>${heroPosition.hpPickRate}%</td>


											<c:if test="${heroPosition.hpTire==1}">
												<td><span class="layui-badge layui-bg-red">${heroPosition.hpTire}</span></td>
											</c:if>
											<c:if test="${heroPosition.hpTire==2}">
												<td><span class="layui-badge layui-bg-orange">${heroPosition.hpTire}</span></td>
											</c:if>
											<c:if test="${heroPosition.hpTire==3}">
												<td><span class="layui-badge layui-bg-green">${heroPosition.hpTire}</span></td>
											</c:if>
											<c:if test="${heroPosition.hpTire==4}">
												<td><span class="layui-badge layui-bg-blue">${heroPosition.hpTire}</span></td>
											</c:if>
											<c:if test="${heroPosition.hpTire==5}">
												<td><span class="layui-badge layui-bg-gray">${heroPosition.hpTire}</span></td>
											</c:if>
										</tr>
									</c:if>
								</c:forEach>
								</tbody>
							</table>
						</div>
		

					</div>
				</div>
		<script>
			layui.config({
				version: '1575889601624' //为了更新 js 缓存，可忽略
			});

			layui.use(['laydate', 'laypage', 'layer', 'table', 'carousel', 'upload', 'element', 'slider'], function() {
				var laydate = layui.laydate //日期
					,
					laypage = layui.laypage //分页
					,
					layer = layui.layer //弹层
					,
					table = layui.table //表格
					,
					carousel = layui.carousel //轮播
					,
					upload = layui.upload //上传
					,
					element = layui.element //元素操作
					,
					slider = layui.slider //滑块

			});
		</script>
	</body>

</html>
