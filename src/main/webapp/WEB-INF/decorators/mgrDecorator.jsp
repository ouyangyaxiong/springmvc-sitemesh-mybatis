<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false" pageEncoding="UTF-8"%>
<html lang="en">
  <head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述三个meta标签必须置顶，其余meta标签后续追加 -->
	<title><sitemesh:write property='title' /></title>
	<%--公共CSS --%>
	<link href="${ctx}/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="${ctx}/resources/css/mgrindex/index.css" rel="stylesheet">
	<link href="${ctx}/resources/css/common.css" rel="stylesheet">
	<link href="${ctx}/resources/css/mgrindex/dashboard.css"
	rel="stylesheet">
	<link rel="icon" href="${ctx}/resources/img/favicon.ico">
	<sitemesh:write property='head' />
  </head>

<body>
	<div class="tomtop-home">
		<!--     <nav class="navbar navbar-inverse navbar-fixed-top"> -->
		<!--       <div class="container-fluid"> -->
		<!--         <div class="navbar-header"> -->
		<!--           <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> -->
		<!--             <span class="sr-only">Toggle navigation</span> -->
		<!--             <span class="icon-bar"></span> -->
		<!--             <span class="icon-bar"></span> -->
		<!--             <span class="icon-bar"></span> -->
		<!--           </button> -->
		<!--           <a class="navbar-brand" href="#">Project name</a> -->
		<!--         </div> -->
		<!--         <div id="navbar" class="navbar-collapse collapse"> -->
		<!--           <ul class="nav navbar-nav navbar-right"> -->
		<!--             <li><a href="#">Dashboard</a></li> -->
		<!--             <li><a href="#">Settings</a></li> -->
		<!--             <li><a href="#">Profile</a></li> -->
		<!--             <li><a href="#">Help</a></li> -->
		<!--           </ul> -->
		<!--           <form class="navbar-form navbar-right"> -->
		<!--             <input type="text" class="form-control" placeholder="Search..."> -->
		<!--           </form> -->
		<!--         </div> -->
		<!--       </div> -->
		<!--     </nav> -->

		<!-- 顶部导航 -->
		<div id="top-nav" class="top-nav">
			<section class="top-nav-left">
				<div class="logo">
					<ahref-"index.html"> </a>
				</div>
				<div class="left-bevel"></div>
			</section>
			<section class="top-nav-title">
				<div class="line"></div>
				<h1>网站首页</h1>
			</section>
			<section class="top-nav-right">
				<div class="right-bevel"></div>
				<ul>
					<li class=""></li>
					<li class=""></li>
				</ul>
				<div class="exit_btn"></div>
			</section>
		</div>
		<!-- end 顶部导航 -->

		<div class="container-fluid">
			<div class="row">
				<!-- 				<div class="col-sm-3 col-md-2 sidebar"> -->
				<!-- 					<ul class="nav nav-sidebar"> -->
				<!-- 						<li class="active"><a href="#">Overview <span -->
				<!-- 								class="sr-only">(current)</span></a></li> -->
				<!-- 						<li><a href="#">Reports</a></li> -->
				<!-- 						<li><a href="#">Analytics</a></li> -->
				<!-- 						<li><a href="#">Export</a></li> -->
				<!-- 					</ul> -->
				<!-- 					<ul class="nav nav-sidebar"> -->
				<!-- 						<li><a href="">Nav item</a></li> -->
				<!-- 						<li><a href="">Nav item again</a></li> -->
				<!-- 						<li><a href="">One more nav</a></li> -->
				<!-- 						<li><a href="">Another nav item</a></li> -->
				<!-- 						<li><a href="">More navigation</a></li> -->
				<!-- 					</ul> -->
				<!-- 					<ul class="nav nav-sidebar"> -->
				<!-- 						<li><a href="">Nav item again</a></li> -->
				<!-- 						<li><a href="">One more nav</a></li> -->
				<!-- 						<li><a href="">Another nav item</a></li> -->
				<!-- 					</ul> -->
				<!-- 				</div> -->
				<!-- 左边菜单栏 -->
				<section class="tomtop-content-left">
					<div class="customer">
						<span class=""></span>
						<p>
							普通员工<br />1234
							<%--用户信息--%>
				<sitemesh:write property='userInfo' />
						</p>
					</div>
					<h4>快速导航</h4>
					<ul>
						<li class=" ">
							<div class="firstItem">
								<span class="leader-icon leader-icon-1"></span> 网站首页
							</div>
							<div class="list">
								<a href="#">司名寓意</a><br /> <a href="#">通拓简介</a><br /> <a
									href="#">组织架构</a><br /> <a href="#">发展历程</a><br /> <a
									href="#">通拓风光</a><br />
							</div>
							<div class="clear"></div>
						</li>
						<li class=" ">
							<div class="firstItem">
								<span class="leader-icon leader-icon-2"></span> 关于通拓
							</div>
							<div class="list">
								<a href="#">管理思想</a><br /> <a href="#">公司理念</a><br /> <a
									href="#">团队概述</a><br /> <a href="#">人性化系列</a><br /> <a
									href="#">企业宣传视频</a><br />
							</div>
							<div class="clear"></div>
						</li>
						<li class=" ">
							<div class="firstItem">
								<span class="leader-icon leader-icon-3"></span> 公司文化
							</div>
							<div class="list">
								<a href="#">品牌优势</a><br /> <a href="#">业务经营模式</a><br /> <a
									href="#">业务范围</a><br />
							</div>
							<div class="clear"></div>
						</li>
						<li class=" ">
							<div class="firstItem">
								<span class="leader-icon leader-icon-4"></span> 公司业务
							</div>
							<div class="list">
								<a href="#">行业新闻</a><br /> <a href="#">公司动态</a><br />
							</div>
							<div class="clear"></div>
						</li>
						<li class=" ">
							<div class="firstItem">
								<span class="leader-icon leader-icon-5"></span> 新闻动态
							</div>
							<div class="list list1">
								<a href="#">行业新闻</a><br /> <a href="#">公司动态</a><br />
							</div>
							<div class="clear"></div>
						</li>
						<li class=" ">
						<div class="firstItem">
						<span class="leader-icon leader-icon-6"></span>
							通拓招聘
						</div>
							<div class="list list1">
								<a href="#">社会招聘</a><br /> <a href="#">校园招聘</a><br />
							</div>
							<div class="clear"></div></li>
						<li class=" ">
						<div class="firstItem">
						<span class="leader-icon leader-icon-7"></span>
							联系我们
						</div>
							<div class="list">
								<a href="#">联系方式</a><br /> <a href="#">留言交流</a><br />
							</div>
							<div class="clear"></div></li>
					</ul>
				</section>

				<%--页面主体 --%>
				<sitemesh:write property='body' />

			</div>
		</div>

		<%--公共JS --%>
		<script src="${ctx}/resources/js/jquery-1.11.3.min.js"></script>
		<script src="${ctx}/resources/js/bootstrap.min.js"></script>
		<script src="${ctx}/resources/js/mgr/mgr.js"></script>
	</div>
</body>
</html>
