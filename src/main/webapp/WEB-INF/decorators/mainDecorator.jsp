<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
    pageEncoding="UTF-8"%>
<html lang="en">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述三个meta标签必须置顶，其余meta标签后续追加 -->
	<title><sitemesh:write property='title' /></title>
	<%--公共CSS --%>
	<link href="${ctx}/resources/css/bootstrap.min.css" rel="stylesheet">
	<link rel="icon" href="${ctx}/resources/img/favicon.ico">
	<sitemesh:write property='head' />
</head>
<body>
	<%--页面主体 --%>
    <sitemesh:write property='body' />
    
    <%--页脚 --%>
    <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2014 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
    </footer>
      
    <%--公共JS --%>
    <script src="${ctx}/resources/js/jquery-1.11.3.min.js"></script>
    <script src="${ctx}/resources/js/bootstrap.min.js"></script>
</body>
</html>