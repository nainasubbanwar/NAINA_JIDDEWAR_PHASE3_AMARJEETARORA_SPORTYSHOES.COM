<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin - Add/Edit Product Category</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<jsp:include page="/components/header1.jsp" ></jsp:include>
<jsp:include page="/components/admin-header.jsp" ></jsp:include>
<jsp:include page="/components/admin-topbar.jsp" ></jsp:include>
<div class="container">
<%
if (request.getParameter("error") != null)
	out.print(request.getParameter("error"));
%>
<form name=frmCat method=post action="admineditcataction">
	<input type=hidden name=id value=${category.ID}>
<table border=1 class="table table-bordered table-dark">
 	<tr>
 		<td width=25%>Category name*</td>
 		<td><input name=name  maxlength=50 value="${category.name}"></td>
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