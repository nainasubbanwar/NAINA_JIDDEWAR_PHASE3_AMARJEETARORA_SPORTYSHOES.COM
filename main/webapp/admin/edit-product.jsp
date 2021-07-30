<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin - Add/Edit Product</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<jsp:include page="/components/header1.jsp" ></jsp:include>
<jsp:include page="/components/admin-header.jsp" ></jsp:include>
<jsp:include page="/components/admin-topbar.jsp" ></jsp:include>
<div class="container">
<p class="alert alert-danger">
<%
if (request.getParameter("error") != null)
	out.print(request.getParameter("error"));
%>
</p>

<form name=frmProduct method=post action="admineditproductaction">
	<input type=hidden name=id value="${product.ID }">
<table class="table table-bordered table-dark">
 	<tr>
 		<td width=25%>Product name*</td>
 		<td><input name=name  maxlength=100 value="${product.name }"></td>
 	</tr>
 	<tr>
 		<td width=25%>Price*</td>
 		<td><input name=price type="numeric"  maxlength=6 value="${product.price }"></td>
 	</tr>
 	<tr>
 		<td width=25%>Category*</td>
 		<td>
 			<select name=category>
 				<option value="0">Select category</option>
 				${catDropdown}
 			</select>
 		</td>
 	</tr>
 	
 	<tr>
 		<td colspan=2>
 			<button class="btn btn-warning">Save</button>
 		</td>
 	</tr>
 </table>
</form>
</div>
<jsp:include page="/components/admin-footer.jsp"></jsp:include>
</body>
</html>