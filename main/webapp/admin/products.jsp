<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Setup Products</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<jsp:include page="/components/header1.jsp" ></jsp:include>
<jsp:include page="/components/admin-header.jsp" ></jsp:include>
<jsp:include page="/components/admin-topbar.jsp" ></jsp:include>
<div class="container">
Total Products: ${list.size()}  &nbsp;&nbsp; <a class="btn btn-warning" style="text-align:center;" href="admineditproduct?id=0">Add Product</a><br>
<table class="table table-bordered table-dark">
 	<tr>
 		<td><b>Product</b></td>
 		<td><b>Price</b></td>
 		<td><b>Category</b></td>
 		<td></td>
 	</tr>
 	<c:forEach items="${list}" var="item">
 	  	<tr>
	 		<td>${item.name }</td>
 			<td>${item.price }</td>
 			<td>${mapCats.get(item.ID)}</td>
 	  		<td>
 	  			<a href="admineditproduct?id=${item.ID}">Edit</a> | <a href="admindeleteproduct?id=${item.ID}">Delete</a>
 	  		</td>
 	  	</tr>
 	  </c:forEach>
</table> 	
</div>
<jsp:include page="/components/admin-footer.jsp"></jsp:include>
</body>
</html>