<%@ page language="java" contentType="text/html; charset=utf-8"
	isELIgnored="false" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>通拓 TOMTOP</title>
</head>
<body>
	<section class="tomtop-content-right"> 右边内容 <%=session.getAttribute("userId")%>
	用户名：${user.userName} </section>
	<userInfo> 用户名：${user.userName} </userInfo>
</body>
</html>