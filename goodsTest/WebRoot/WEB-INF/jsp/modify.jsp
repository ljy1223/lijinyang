<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<title>修改订单</title>
</head>
<body>
	<form method="POST" action="${pageContext.request.contextPath }/update">
		<table border="1">
			<tr>
				<td>商品编号：</td>
				<td><input type="text" name="id" value="${goods.id }"></td>
			</tr>
			<tr>
				<td>商品名称：</td>
				<td><input type="text" name="goodsName"
					value="${goods.goodsName }"></td>
			</tr>
			<tr>
				<td>商品价格：</td>
				<td><input type="text" name="price" value="${goods.price }"></td>
			</tr>
			<tr>
				<td>库存数量：</td>
				<td><input type="text" name="counts" value="${goods.counts }"></td>
			</tr>
			<tr>
				<td>订单状态：</td>
				<td><c:if test="${goods.status==0 }">
						<select name="status">
							<option value="0">待处理
							<option value="1">处理中
							<option value="2">已处理
						</select>
					</c:if> <c:if test="${goods.status==1 }">
						<select name="status">
							<option value="1">处理中
							<option value="2">已处理
							<option value="0">待处理
						</select>
					</c:if> <c:if test="${goods.status==2 }">
						<select name="status">
							<option value="2">已处理
							<option value="0">待处理
							<option value="1">处理中
						</select>
					</c:if></td>
			</tr>
			<tr>
				<td><input type="submit" value="提交"></td>
			</tr>
		</table>
	</form>
</body>
</html>
