<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>查询订单</title>
</head>
<body>
	<form method="post" action="${pageContext.request.contextPath }/select">
	<div style="text-align:center">
		请选择区域：
		<select id="district" name="district">
			<option value="0">海淀区订单</option>
			<option value="1">昌平区订单</option>
			<option value="2">朝阳区订单</option>
			<option value="3">丰台区订单</option>
			<option value="4">玄武区订单</option>
		</select>
		<input type="submit" value="查询">
	</div>
	</form>
</body>
</html>
