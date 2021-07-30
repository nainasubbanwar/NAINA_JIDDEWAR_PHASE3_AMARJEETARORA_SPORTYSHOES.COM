<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sporty Shoes - Your Cart</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<style>
.contain {
	padding: 0px 25%;
}
</style>
</head>
<body>
	<jsp:include page="/components/header1.jsp"></jsp:include>
	<jsp:include page="/components/header.jsp"></jsp:include>
	<jsp:include page="/components/topbar.jsp"></jsp:include>

	<div class="container">
		<div class="contain">
			<c:if test="${error != null}">
				<p class="alert alert-danger">
					<c:out value="${error}" />
				<p>
			</c:if>
			Total Cart Value: ${cartValue }<br>
			<p style="color: orange; text-align: right">Total ${list.size()}
				Orders: ${totalAmount }</p>
			<table class="table">
				<thead>
					<tr>
						<th scope="col">Product</th>
						<th scope="col">Qty</th>
						<th scope="col">Price</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${cartItems}" var="item">
						<tr>
							<th scope="row">${item.name }</th>
							<td>${item.qty}</td>
							<td>${item.price}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<br>
			<c:if test="${cartItems.size() > 0}">
				<a class="btn btn-warning" href="checkout">Checkout Now</a>
			</c:if>
		</div>
	</div>
</body>
</html>