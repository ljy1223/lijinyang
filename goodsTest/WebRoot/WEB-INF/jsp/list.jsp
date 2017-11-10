<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<title>订单详情</title>
</head>
<body>		
	<table border="1">
		<tr>
			<td>商品编号</td>
			<td>商品名称</td>
			<td>商品价格</td>
			<td>库存数量</td>
			<td>订单状态</td>
			<td>操作</td>
		</tr>
	<c:forEach var="goods" items="${goods}">
		<tr>
			<td>${goods.id}</td>
			<td>${goods.goodsName}</td>
			<td>${goods.price}</td>
			<td>${goods.counts}</td>
			<td>
			<c:if test="${goods.status==0}">待处理</c:if>
			<c:if test="${goods.status==1}">处理中</c:if>
			<c:if test="${goods.status==2}">已处理</c:if>
			</td>
			<td><a href="${pageContext.request.contextPath }/selectById?id=${goods.id}">修改</a></td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>
