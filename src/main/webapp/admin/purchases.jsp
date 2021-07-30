<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin - Purchases Report</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<jsp:include page="/components/header1.jsp" ></jsp:include>
<jsp:include page="/components/admin-header.jsp" ></jsp:include>
<jsp:include page="/components/admin-topbar.jsp" ></jsp:include>

<div class="container">
<br><br>Total ${list.size()} Orders: ${totalAmount }<br>

<table class="table table-bordered table-dark">
 	<tr>
 		<td><b>Order ID</b></td>
 		<td><b>User</b>
 		<td><b>Date</b></td>
 		<td><b>Total</b></td>
 		<td><b>Items</b></td>
 	</tr>
 	<c:forEach items="${list}" var="item">
 	  	<tr>
	 		<td>${item.ID }</td>
 			<td>
 				${mapUsers.get(item.ID)}
 			</td>
 			<td>${item.date }</td>
 			<td>${item.total}</td>
 			<td>
 				${mapItems.get(item.ID)}
 			</td>
 	  	</tr>
 	  </c:forEach>
</table> 		
</div>
<jsp:include page="/components/admin-footer.jsp"></jsp:include>
</body>
</html>