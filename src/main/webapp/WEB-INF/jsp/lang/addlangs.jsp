<%@ page language="java" contentType="text/html; charset=utf-8"
	isELIgnored="false" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加语言支持</title>
</head>
<body>
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<h1 class="page-header">添加语言支持</h1>

		<h2 class="sub-header">已支持语言</h2>
		<div class="table-responsive">
			<table class="table table-striped">
				<thead>
					<%--添加栏目 --%>
					<tr>
						<td><input type="text" class="form-control lang" placeholder="输入新语种"></td>
						<td><button type="button" class="btn btn-primary savebtn">添加</button></td>
					</tr>
					<tr>
						<th>语种</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<%--打印已存在列表 --%>
					<c:forEach items="${langs}" var="l">
						<tr>
							<td>${l.lang}</td>
							<td><a type="button" class="btn btn-xs btn-danger deleteItem" id="${l.id}">删除</a></td>
						</tr>
				    </c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<script src="${ctx}/resources/js/lang/lang.js"></script>
</body>
</html>